#join data
perl join.pl Septoria_RNASEQ_Heatmap_data_modified.txt >Septoria_RNASEQ_Heatmap_data_modified-joined.txt
#add annotation
perl addannotation.pl Septoria_RNASEQ_Heatmap_data_modified-joined.txt > Septoria_RNASEQ_Heatmap_data_modified-joined-annotation.txt
#Modified manually shifterd columns to get Septoria_RNASEQ_Heatmap_data_with_annotation_and_heatmap.xlsx

