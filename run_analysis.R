# Read mean and std features

feature <- read.table("features.txt", sep=" ",
                      col.names=c("id", "name"),
                      stringsAsFactors=FALSE)

pretty.feature.names <- gsub("\\(|\\)", "", feature$name)

my.colClasses <- ifelse(grepl("(mean|std)\\(\\)", feature$name),
                        "numeric",
                        "NULL")


# Read and merge datasets

read.dataset <- function(name, ...) {

  X <- read.table(paste(name, "/X_", name, ".txt", sep=""),
                        col.names=pretty.feature.names,
                        colClasses=my.colClasses,
                        ...)
  
  Y <- read.table(paste(name, "/y_", name, ".txt", sep=""),
                  col.names="activity",
                  ...)

  subject <- read.table(paste(name, "/subject_", name, ".txt", sep=""),
                  col.names="subject",
                  ...)
  
  dataset <- cbind(subject, Y, X)

}

train <- read.dataset("train")
test <- read.dataset("test")

dataset <- rbind(train, test)


# Read activity names, and factor activity variable

activity <- read.table("activity_labels.txt",
                       col.names=c("id", "name"),
                       stringsAsFactors=FALSE)

dataset$activity <- factor(dataset$activity,
                           levels=activity$id,
                           labels=activity$name)


# Aggregate data and write to file

tidy <- aggregate(. ~ subject + activity,
                  data=dataset,
                  FUN=mean)

write.table(tidy, "tidy.txt",
            row.names=FALSE,
            quote=FALSE)
