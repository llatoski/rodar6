# LCFL 29/09/2021
BEGIN{
   SOMA=0;
   SOMA2=0;
   COUNT=0;
}
{
   SOMA+=$1;
   SOMA2+=$1*$1;
   COUNT++;
}
END{
   MEDIA=(double)SOMA/COUNT;
   MEDIA2=(double)SOMA2/COUNT;
   ERROR = MEDIA2 - MEDIA*MEDIA;
   printf("%s %lf %lf %d\n",FILENAME,MEDIA,sqrt(ERROR),COUNT);
}