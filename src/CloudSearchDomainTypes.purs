
module AWS.CloudSearchDomain.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype Adds = Adds Number
derive instance newtypeAdds :: Newtype Adds _
derive instance repGenericAdds :: Generic Adds _
instance showAdds :: Show Adds where show = genericShow
instance decodeAdds :: Decode Adds where decode = genericDecode options
instance encodeAdds :: Encode Adds where encode = genericEncode options



-- | <p>A container for facet information. </p>
newtype Bucket = Bucket 
  { "value" :: Maybe (String)
  , "count" :: Maybe (Number)
  }
derive instance newtypeBucket :: Newtype Bucket _
derive instance repGenericBucket :: Generic Bucket _
instance showBucket :: Show Bucket where show = genericShow
instance decodeBucket :: Decode Bucket where decode = genericDecode options
instance encodeBucket :: Encode Bucket where encode = genericEncode options

-- | Constructs Bucket from required parameters
newBucket :: Bucket
newBucket  = Bucket { "count": Nothing, "value": Nothing }

-- | Constructs Bucket's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBucket' :: ( { "value" :: Maybe (String) , "count" :: Maybe (Number) } -> {"value" :: Maybe (String) , "count" :: Maybe (Number) } ) -> Bucket
newBucket'  customize = (Bucket <<< customize) { "count": Nothing, "value": Nothing }



-- | <p>A container for the calculated facet values and counts.</p>
newtype BucketInfo = BucketInfo 
  { "buckets" :: Maybe (BucketList)
  }
derive instance newtypeBucketInfo :: Newtype BucketInfo _
derive instance repGenericBucketInfo :: Generic BucketInfo _
instance showBucketInfo :: Show BucketInfo where show = genericShow
instance decodeBucketInfo :: Decode BucketInfo where decode = genericDecode options
instance encodeBucketInfo :: Encode BucketInfo where encode = genericEncode options

-- | Constructs BucketInfo from required parameters
newBucketInfo :: BucketInfo
newBucketInfo  = BucketInfo { "buckets": Nothing }

-- | Constructs BucketInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBucketInfo' :: ( { "buckets" :: Maybe (BucketList) } -> {"buckets" :: Maybe (BucketList) } ) -> BucketInfo
newBucketInfo'  customize = (BucketInfo <<< customize) { "buckets": Nothing }



newtype BucketList = BucketList (Array Bucket)
derive instance newtypeBucketList :: Newtype BucketList _
derive instance repGenericBucketList :: Generic BucketList _
instance showBucketList :: Show BucketList where show = genericShow
instance decodeBucketList :: Decode BucketList where decode = genericDecode options
instance encodeBucketList :: Encode BucketList where encode = genericEncode options



newtype ContentType = ContentType String
derive instance newtypeContentType :: Newtype ContentType _
derive instance repGenericContentType :: Generic ContentType _
instance showContentType :: Show ContentType where show = genericShow
instance decodeContentType :: Decode ContentType where decode = genericDecode options
instance encodeContentType :: Encode ContentType where encode = genericEncode options



newtype Cursor = Cursor String
derive instance newtypeCursor :: Newtype Cursor _
derive instance repGenericCursor :: Generic Cursor _
instance showCursor :: Show Cursor where show = genericShow
instance decodeCursor :: Decode Cursor where decode = genericDecode options
instance encodeCursor :: Encode Cursor where encode = genericEncode options



newtype Deletes = Deletes Number
derive instance newtypeDeletes :: Newtype Deletes _
derive instance repGenericDeletes :: Generic Deletes _
instance showDeletes :: Show Deletes where show = genericShow
instance decodeDeletes :: Decode Deletes where decode = genericDecode options
instance encodeDeletes :: Encode Deletes where encode = genericEncode options



-- | <p>Information about any problems encountered while processing an upload request.</p>
newtype DocumentServiceException = DocumentServiceException 
  { "status" :: Maybe (String)
  , "message" :: Maybe (String)
  }
derive instance newtypeDocumentServiceException :: Newtype DocumentServiceException _
derive instance repGenericDocumentServiceException :: Generic DocumentServiceException _
instance showDocumentServiceException :: Show DocumentServiceException where show = genericShow
instance decodeDocumentServiceException :: Decode DocumentServiceException where decode = genericDecode options
instance encodeDocumentServiceException :: Encode DocumentServiceException where encode = genericEncode options

-- | Constructs DocumentServiceException from required parameters
newDocumentServiceException :: DocumentServiceException
newDocumentServiceException  = DocumentServiceException { "message": Nothing, "status": Nothing }

-- | Constructs DocumentServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDocumentServiceException' :: ( { "status" :: Maybe (String) , "message" :: Maybe (String) } -> {"status" :: Maybe (String) , "message" :: Maybe (String) } ) -> DocumentServiceException
newDocumentServiceException'  customize = (DocumentServiceException <<< customize) { "message": Nothing, "status": Nothing }



-- | <p>A warning returned by the document service when an issue is discovered while processing an upload request.</p>
newtype DocumentServiceWarning = DocumentServiceWarning 
  { "message" :: Maybe (String)
  }
derive instance newtypeDocumentServiceWarning :: Newtype DocumentServiceWarning _
derive instance repGenericDocumentServiceWarning :: Generic DocumentServiceWarning _
instance showDocumentServiceWarning :: Show DocumentServiceWarning where show = genericShow
instance decodeDocumentServiceWarning :: Decode DocumentServiceWarning where decode = genericDecode options
instance encodeDocumentServiceWarning :: Encode DocumentServiceWarning where encode = genericEncode options

-- | Constructs DocumentServiceWarning from required parameters
newDocumentServiceWarning :: DocumentServiceWarning
newDocumentServiceWarning  = DocumentServiceWarning { "message": Nothing }

-- | Constructs DocumentServiceWarning's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDocumentServiceWarning' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> DocumentServiceWarning
newDocumentServiceWarning'  customize = (DocumentServiceWarning <<< customize) { "message": Nothing }



newtype DocumentServiceWarnings = DocumentServiceWarnings (Array DocumentServiceWarning)
derive instance newtypeDocumentServiceWarnings :: Newtype DocumentServiceWarnings _
derive instance repGenericDocumentServiceWarnings :: Generic DocumentServiceWarnings _
instance showDocumentServiceWarnings :: Show DocumentServiceWarnings where show = genericShow
instance decodeDocumentServiceWarnings :: Decode DocumentServiceWarnings where decode = genericDecode options
instance encodeDocumentServiceWarnings :: Encode DocumentServiceWarnings where encode = genericEncode options



newtype Expr = Expr String
derive instance newtypeExpr :: Newtype Expr _
derive instance repGenericExpr :: Generic Expr _
instance showExpr :: Show Expr where show = genericShow
instance decodeExpr :: Decode Expr where decode = genericDecode options
instance encodeExpr :: Encode Expr where encode = genericEncode options



newtype Exprs = Exprs (StrMap.StrMap String)
derive instance newtypeExprs :: Newtype Exprs _
derive instance repGenericExprs :: Generic Exprs _
instance showExprs :: Show Exprs where show = genericShow
instance decodeExprs :: Decode Exprs where decode = genericDecode options
instance encodeExprs :: Encode Exprs where encode = genericEncode options



newtype Facet = Facet String
derive instance newtypeFacet :: Newtype Facet _
derive instance repGenericFacet :: Generic Facet _
instance showFacet :: Show Facet where show = genericShow
instance decodeFacet :: Decode Facet where decode = genericDecode options
instance encodeFacet :: Encode Facet where encode = genericEncode options



newtype Facets = Facets (StrMap.StrMap BucketInfo)
derive instance newtypeFacets :: Newtype Facets _
derive instance repGenericFacets :: Generic Facets _
instance showFacets :: Show Facets where show = genericShow
instance decodeFacets :: Decode Facets where decode = genericDecode options
instance encodeFacets :: Encode Facets where encode = genericEncode options



-- | <p>The statistics for a field calculated in the request.</p>
newtype FieldStats = FieldStats 
  { "min" :: Maybe (String)
  , "max" :: Maybe (String)
  , "count" :: Maybe (Number)
  , "missing" :: Maybe (Number)
  , "sum" :: Maybe (Number)
  , "sumOfSquares" :: Maybe (Number)
  , "mean" :: Maybe (String)
  , "stddev" :: Maybe (Number)
  }
derive instance newtypeFieldStats :: Newtype FieldStats _
derive instance repGenericFieldStats :: Generic FieldStats _
instance showFieldStats :: Show FieldStats where show = genericShow
instance decodeFieldStats :: Decode FieldStats where decode = genericDecode options
instance encodeFieldStats :: Encode FieldStats where encode = genericEncode options

-- | Constructs FieldStats from required parameters
newFieldStats :: FieldStats
newFieldStats  = FieldStats { "count": Nothing, "max": Nothing, "mean": Nothing, "min": Nothing, "missing": Nothing, "stddev": Nothing, "sum": Nothing, "sumOfSquares": Nothing }

-- | Constructs FieldStats's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFieldStats' :: ( { "min" :: Maybe (String) , "max" :: Maybe (String) , "count" :: Maybe (Number) , "missing" :: Maybe (Number) , "sum" :: Maybe (Number) , "sumOfSquares" :: Maybe (Number) , "mean" :: Maybe (String) , "stddev" :: Maybe (Number) } -> {"min" :: Maybe (String) , "max" :: Maybe (String) , "count" :: Maybe (Number) , "missing" :: Maybe (Number) , "sum" :: Maybe (Number) , "sumOfSquares" :: Maybe (Number) , "mean" :: Maybe (String) , "stddev" :: Maybe (Number) } ) -> FieldStats
newFieldStats'  customize = (FieldStats <<< customize) { "count": Nothing, "max": Nothing, "mean": Nothing, "min": Nothing, "missing": Nothing, "stddev": Nothing, "sum": Nothing, "sumOfSquares": Nothing }



newtype FieldValue = FieldValue (Array String)
derive instance newtypeFieldValue :: Newtype FieldValue _
derive instance repGenericFieldValue :: Generic FieldValue _
instance showFieldValue :: Show FieldValue where show = genericShow
instance decodeFieldValue :: Decode FieldValue where decode = genericDecode options
instance encodeFieldValue :: Encode FieldValue where encode = genericEncode options



newtype Fields = Fields (StrMap.StrMap FieldValue)
derive instance newtypeFields :: Newtype Fields _
derive instance repGenericFields :: Generic Fields _
instance showFields :: Show Fields where show = genericShow
instance decodeFields :: Decode Fields where decode = genericDecode options
instance encodeFields :: Encode Fields where encode = genericEncode options



newtype FilterQuery = FilterQuery String
derive instance newtypeFilterQuery :: Newtype FilterQuery _
derive instance repGenericFilterQuery :: Generic FilterQuery _
instance showFilterQuery :: Show FilterQuery where show = genericShow
instance decodeFilterQuery :: Decode FilterQuery where decode = genericDecode options
instance encodeFilterQuery :: Encode FilterQuery where encode = genericEncode options



newtype Highlight = Highlight String
derive instance newtypeHighlight :: Newtype Highlight _
derive instance repGenericHighlight :: Generic Highlight _
instance showHighlight :: Show Highlight where show = genericShow
instance decodeHighlight :: Decode Highlight where decode = genericDecode options
instance encodeHighlight :: Encode Highlight where encode = genericEncode options



newtype Highlights = Highlights (StrMap.StrMap String)
derive instance newtypeHighlights :: Newtype Highlights _
derive instance repGenericHighlights :: Generic Highlights _
instance showHighlights :: Show Highlights where show = genericShow
instance decodeHighlights :: Decode Highlights where decode = genericDecode options
instance encodeHighlights :: Encode Highlights where encode = genericEncode options



-- | <p>Information about a document that matches the search request.</p>
newtype Hit = Hit 
  { "id" :: Maybe (String)
  , "fields" :: Maybe (Fields)
  , "exprs" :: Maybe (Exprs)
  , "highlights" :: Maybe (Highlights)
  }
derive instance newtypeHit :: Newtype Hit _
derive instance repGenericHit :: Generic Hit _
instance showHit :: Show Hit where show = genericShow
instance decodeHit :: Decode Hit where decode = genericDecode options
instance encodeHit :: Encode Hit where encode = genericEncode options

-- | Constructs Hit from required parameters
newHit :: Hit
newHit  = Hit { "exprs": Nothing, "fields": Nothing, "highlights": Nothing, "id": Nothing }

-- | Constructs Hit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHit' :: ( { "id" :: Maybe (String) , "fields" :: Maybe (Fields) , "exprs" :: Maybe (Exprs) , "highlights" :: Maybe (Highlights) } -> {"id" :: Maybe (String) , "fields" :: Maybe (Fields) , "exprs" :: Maybe (Exprs) , "highlights" :: Maybe (Highlights) } ) -> Hit
newHit'  customize = (Hit <<< customize) { "exprs": Nothing, "fields": Nothing, "highlights": Nothing, "id": Nothing }



newtype HitList = HitList (Array Hit)
derive instance newtypeHitList :: Newtype HitList _
derive instance repGenericHitList :: Generic HitList _
instance showHitList :: Show HitList where show = genericShow
instance decodeHitList :: Decode HitList where decode = genericDecode options
instance encodeHitList :: Encode HitList where encode = genericEncode options



-- | <p>The collection of documents that match the search request.</p>
newtype Hits = Hits 
  { "found" :: Maybe (Number)
  , "start" :: Maybe (Number)
  , "cursor" :: Maybe (String)
  , "hit" :: Maybe (HitList)
  }
derive instance newtypeHits :: Newtype Hits _
derive instance repGenericHits :: Generic Hits _
instance showHits :: Show Hits where show = genericShow
instance decodeHits :: Decode Hits where decode = genericDecode options
instance encodeHits :: Encode Hits where encode = genericEncode options

-- | Constructs Hits from required parameters
newHits :: Hits
newHits  = Hits { "cursor": Nothing, "found": Nothing, "hit": Nothing, "start": Nothing }

-- | Constructs Hits's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHits' :: ( { "found" :: Maybe (Number) , "start" :: Maybe (Number) , "cursor" :: Maybe (String) , "hit" :: Maybe (HitList) } -> {"found" :: Maybe (Number) , "start" :: Maybe (Number) , "cursor" :: Maybe (String) , "hit" :: Maybe (HitList) } ) -> Hits
newHits'  customize = (Hits <<< customize) { "cursor": Nothing, "found": Nothing, "hit": Nothing, "start": Nothing }



newtype Partial'' = Partial'' Boolean
derive instance newtypePartial'' :: Newtype Partial'' _
derive instance repGenericPartial'' :: Generic Partial'' _
instance showPartial'' :: Show Partial'' where show = genericShow
instance decodePartial'' :: Decode Partial'' where decode = genericDecode options
instance encodePartial'' :: Encode Partial'' where encode = genericEncode options



newtype Query = Query String
derive instance newtypeQuery :: Newtype Query _
derive instance repGenericQuery :: Generic Query _
instance showQuery :: Show Query where show = genericShow
instance decodeQuery :: Decode Query where decode = genericDecode options
instance encodeQuery :: Encode Query where encode = genericEncode options



newtype QueryOptions = QueryOptions String
derive instance newtypeQueryOptions :: Newtype QueryOptions _
derive instance repGenericQueryOptions :: Generic QueryOptions _
instance showQueryOptions :: Show QueryOptions where show = genericShow
instance decodeQueryOptions :: Decode QueryOptions where decode = genericDecode options
instance encodeQueryOptions :: Encode QueryOptions where encode = genericEncode options



newtype QueryParser = QueryParser String
derive instance newtypeQueryParser :: Newtype QueryParser _
derive instance repGenericQueryParser :: Generic QueryParser _
instance showQueryParser :: Show QueryParser where show = genericShow
instance decodeQueryParser :: Decode QueryParser where decode = genericDecode options
instance encodeQueryParser :: Encode QueryParser where encode = genericEncode options



newtype Return = Return String
derive instance newtypeReturn :: Newtype Return _
derive instance repGenericReturn :: Generic Return _
instance showReturn :: Show Return where show = genericShow
instance decodeReturn :: Decode Return where decode = genericDecode options
instance encodeReturn :: Encode Return where encode = genericEncode options



-- | <p>Information about any problems encountered while processing a search request.</p>
newtype SearchException = SearchException 
  { "message" :: Maybe (String)
  }
derive instance newtypeSearchException :: Newtype SearchException _
derive instance repGenericSearchException :: Generic SearchException _
instance showSearchException :: Show SearchException where show = genericShow
instance decodeSearchException :: Decode SearchException where decode = genericDecode options
instance encodeSearchException :: Encode SearchException where encode = genericEncode options

-- | Constructs SearchException from required parameters
newSearchException :: SearchException
newSearchException  = SearchException { "message": Nothing }

-- | Constructs SearchException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> SearchException
newSearchException'  customize = (SearchException <<< customize) { "message": Nothing }



-- | <p>Container for the parameters to the <code>Search</code> request.</p>
newtype SearchRequest = SearchRequest 
  { "cursor" :: Maybe (Cursor)
  , "expr" :: Maybe (Expr)
  , "facet" :: Maybe (Facet)
  , "filterQuery" :: Maybe (FilterQuery)
  , "highlight" :: Maybe (Highlight)
  , "partial" :: Maybe (Partial'')
  , "query" :: (Query)
  , "queryOptions" :: Maybe (QueryOptions)
  , "queryParser" :: Maybe (QueryParser)
  , "return" :: Maybe (Return)
  , "size" :: Maybe (Size)
  , "sort" :: Maybe (Sort)
  , "start" :: Maybe (Start)
  , "stats" :: Maybe (Stat)
  }
derive instance newtypeSearchRequest :: Newtype SearchRequest _
derive instance repGenericSearchRequest :: Generic SearchRequest _
instance showSearchRequest :: Show SearchRequest where show = genericShow
instance decodeSearchRequest :: Decode SearchRequest where decode = genericDecode options
instance encodeSearchRequest :: Encode SearchRequest where encode = genericEncode options

-- | Constructs SearchRequest from required parameters
newSearchRequest :: Query -> SearchRequest
newSearchRequest _query = SearchRequest { "query": _query, "cursor": Nothing, "expr": Nothing, "facet": Nothing, "filterQuery": Nothing, "highlight": Nothing, "partial": Nothing, "queryOptions": Nothing, "queryParser": Nothing, "return": Nothing, "size": Nothing, "sort": Nothing, "start": Nothing, "stats": Nothing }

-- | Constructs SearchRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchRequest' :: Query -> ( { "cursor" :: Maybe (Cursor) , "expr" :: Maybe (Expr) , "facet" :: Maybe (Facet) , "filterQuery" :: Maybe (FilterQuery) , "highlight" :: Maybe (Highlight) , "partial" :: Maybe (Partial'') , "query" :: (Query) , "queryOptions" :: Maybe (QueryOptions) , "queryParser" :: Maybe (QueryParser) , "return" :: Maybe (Return) , "size" :: Maybe (Size) , "sort" :: Maybe (Sort) , "start" :: Maybe (Start) , "stats" :: Maybe (Stat) } -> {"cursor" :: Maybe (Cursor) , "expr" :: Maybe (Expr) , "facet" :: Maybe (Facet) , "filterQuery" :: Maybe (FilterQuery) , "highlight" :: Maybe (Highlight) , "partial" :: Maybe (Partial'') , "query" :: (Query) , "queryOptions" :: Maybe (QueryOptions) , "queryParser" :: Maybe (QueryParser) , "return" :: Maybe (Return) , "size" :: Maybe (Size) , "sort" :: Maybe (Sort) , "start" :: Maybe (Start) , "stats" :: Maybe (Stat) } ) -> SearchRequest
newSearchRequest' _query customize = (SearchRequest <<< customize) { "query": _query, "cursor": Nothing, "expr": Nothing, "facet": Nothing, "filterQuery": Nothing, "highlight": Nothing, "partial": Nothing, "queryOptions": Nothing, "queryParser": Nothing, "return": Nothing, "size": Nothing, "sort": Nothing, "start": Nothing, "stats": Nothing }



-- | <p>The result of a <code>Search</code> request. Contains the documents that match the specified search criteria and any requested fields, highlights, and facet information.</p>
newtype SearchResponse = SearchResponse 
  { "status" :: Maybe (SearchStatus)
  , "hits" :: Maybe (Hits)
  , "facets" :: Maybe (Facets)
  , "stats" :: Maybe (Stats)
  }
derive instance newtypeSearchResponse :: Newtype SearchResponse _
derive instance repGenericSearchResponse :: Generic SearchResponse _
instance showSearchResponse :: Show SearchResponse where show = genericShow
instance decodeSearchResponse :: Decode SearchResponse where decode = genericDecode options
instance encodeSearchResponse :: Encode SearchResponse where encode = genericEncode options

-- | Constructs SearchResponse from required parameters
newSearchResponse :: SearchResponse
newSearchResponse  = SearchResponse { "facets": Nothing, "hits": Nothing, "stats": Nothing, "status": Nothing }

-- | Constructs SearchResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchResponse' :: ( { "status" :: Maybe (SearchStatus) , "hits" :: Maybe (Hits) , "facets" :: Maybe (Facets) , "stats" :: Maybe (Stats) } -> {"status" :: Maybe (SearchStatus) , "hits" :: Maybe (Hits) , "facets" :: Maybe (Facets) , "stats" :: Maybe (Stats) } ) -> SearchResponse
newSearchResponse'  customize = (SearchResponse <<< customize) { "facets": Nothing, "hits": Nothing, "stats": Nothing, "status": Nothing }



-- | <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
newtype SearchStatus = SearchStatus 
  { "timems" :: Maybe (Number)
  , "rid" :: Maybe (String)
  }
derive instance newtypeSearchStatus :: Newtype SearchStatus _
derive instance repGenericSearchStatus :: Generic SearchStatus _
instance showSearchStatus :: Show SearchStatus where show = genericShow
instance decodeSearchStatus :: Decode SearchStatus where decode = genericDecode options
instance encodeSearchStatus :: Encode SearchStatus where encode = genericEncode options

-- | Constructs SearchStatus from required parameters
newSearchStatus :: SearchStatus
newSearchStatus  = SearchStatus { "rid": Nothing, "timems": Nothing }

-- | Constructs SearchStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchStatus' :: ( { "timems" :: Maybe (Number) , "rid" :: Maybe (String) } -> {"timems" :: Maybe (Number) , "rid" :: Maybe (String) } ) -> SearchStatus
newSearchStatus'  customize = (SearchStatus <<< customize) { "rid": Nothing, "timems": Nothing }



newtype Size = Size Number
derive instance newtypeSize :: Newtype Size _
derive instance repGenericSize :: Generic Size _
instance showSize :: Show Size where show = genericShow
instance decodeSize :: Decode Size where decode = genericDecode options
instance encodeSize :: Encode Size where encode = genericEncode options



newtype Sort = Sort String
derive instance newtypeSort :: Newtype Sort _
derive instance repGenericSort :: Generic Sort _
instance showSort :: Show Sort where show = genericShow
instance decodeSort :: Decode Sort where decode = genericDecode options
instance encodeSort :: Encode Sort where encode = genericEncode options



newtype Start = Start Number
derive instance newtypeStart :: Newtype Start _
derive instance repGenericStart :: Generic Start _
instance showStart :: Show Start where show = genericShow
instance decodeStart :: Decode Start where decode = genericDecode options
instance encodeStart :: Encode Start where encode = genericEncode options



newtype Stat = Stat String
derive instance newtypeStat :: Newtype Stat _
derive instance repGenericStat :: Generic Stat _
instance showStat :: Show Stat where show = genericShow
instance decodeStat :: Decode Stat where decode = genericDecode options
instance encodeStat :: Encode Stat where encode = genericEncode options



-- | <p>The statistics calculated in the request.</p>
newtype Stats = Stats (StrMap.StrMap FieldStats)
derive instance newtypeStats :: Newtype Stats _
derive instance repGenericStats :: Generic Stats _
instance showStats :: Show Stats where show = genericShow
instance decodeStats :: Decode Stats where decode = genericDecode options
instance encodeStats :: Encode Stats where encode = genericEncode options



-- | <p>Container for the suggestion information returned in a <code>SuggestResponse</code>.</p>
newtype SuggestModel = SuggestModel 
  { "query" :: Maybe (String)
  , "found" :: Maybe (Number)
  , "suggestions" :: Maybe (Suggestions)
  }
derive instance newtypeSuggestModel :: Newtype SuggestModel _
derive instance repGenericSuggestModel :: Generic SuggestModel _
instance showSuggestModel :: Show SuggestModel where show = genericShow
instance decodeSuggestModel :: Decode SuggestModel where decode = genericDecode options
instance encodeSuggestModel :: Encode SuggestModel where encode = genericEncode options

-- | Constructs SuggestModel from required parameters
newSuggestModel :: SuggestModel
newSuggestModel  = SuggestModel { "found": Nothing, "query": Nothing, "suggestions": Nothing }

-- | Constructs SuggestModel's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestModel' :: ( { "query" :: Maybe (String) , "found" :: Maybe (Number) , "suggestions" :: Maybe (Suggestions) } -> {"query" :: Maybe (String) , "found" :: Maybe (Number) , "suggestions" :: Maybe (Suggestions) } ) -> SuggestModel
newSuggestModel'  customize = (SuggestModel <<< customize) { "found": Nothing, "query": Nothing, "suggestions": Nothing }



-- | <p>Container for the parameters to the <code>Suggest</code> request.</p>
newtype SuggestRequest = SuggestRequest 
  { "query" :: (Query)
  , "suggester" :: (Suggester)
  , "size" :: Maybe (SuggestionsSize)
  }
derive instance newtypeSuggestRequest :: Newtype SuggestRequest _
derive instance repGenericSuggestRequest :: Generic SuggestRequest _
instance showSuggestRequest :: Show SuggestRequest where show = genericShow
instance decodeSuggestRequest :: Decode SuggestRequest where decode = genericDecode options
instance encodeSuggestRequest :: Encode SuggestRequest where encode = genericEncode options

-- | Constructs SuggestRequest from required parameters
newSuggestRequest :: Query -> Suggester -> SuggestRequest
newSuggestRequest _query _suggester = SuggestRequest { "query": _query, "suggester": _suggester, "size": Nothing }

-- | Constructs SuggestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestRequest' :: Query -> Suggester -> ( { "query" :: (Query) , "suggester" :: (Suggester) , "size" :: Maybe (SuggestionsSize) } -> {"query" :: (Query) , "suggester" :: (Suggester) , "size" :: Maybe (SuggestionsSize) } ) -> SuggestRequest
newSuggestRequest' _query _suggester customize = (SuggestRequest <<< customize) { "query": _query, "suggester": _suggester, "size": Nothing }



-- | <p>Contains the response to a <code>Suggest</code> request.</p>
newtype SuggestResponse = SuggestResponse 
  { "status" :: Maybe (SuggestStatus)
  , "suggest" :: Maybe (SuggestModel)
  }
derive instance newtypeSuggestResponse :: Newtype SuggestResponse _
derive instance repGenericSuggestResponse :: Generic SuggestResponse _
instance showSuggestResponse :: Show SuggestResponse where show = genericShow
instance decodeSuggestResponse :: Decode SuggestResponse where decode = genericDecode options
instance encodeSuggestResponse :: Encode SuggestResponse where encode = genericEncode options

-- | Constructs SuggestResponse from required parameters
newSuggestResponse :: SuggestResponse
newSuggestResponse  = SuggestResponse { "status": Nothing, "suggest": Nothing }

-- | Constructs SuggestResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestResponse' :: ( { "status" :: Maybe (SuggestStatus) , "suggest" :: Maybe (SuggestModel) } -> {"status" :: Maybe (SuggestStatus) , "suggest" :: Maybe (SuggestModel) } ) -> SuggestResponse
newSuggestResponse'  customize = (SuggestResponse <<< customize) { "status": Nothing, "suggest": Nothing }



-- | <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
newtype SuggestStatus = SuggestStatus 
  { "timems" :: Maybe (Number)
  , "rid" :: Maybe (String)
  }
derive instance newtypeSuggestStatus :: Newtype SuggestStatus _
derive instance repGenericSuggestStatus :: Generic SuggestStatus _
instance showSuggestStatus :: Show SuggestStatus where show = genericShow
instance decodeSuggestStatus :: Decode SuggestStatus where decode = genericDecode options
instance encodeSuggestStatus :: Encode SuggestStatus where encode = genericEncode options

-- | Constructs SuggestStatus from required parameters
newSuggestStatus :: SuggestStatus
newSuggestStatus  = SuggestStatus { "rid": Nothing, "timems": Nothing }

-- | Constructs SuggestStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestStatus' :: ( { "timems" :: Maybe (Number) , "rid" :: Maybe (String) } -> {"timems" :: Maybe (Number) , "rid" :: Maybe (String) } ) -> SuggestStatus
newSuggestStatus'  customize = (SuggestStatus <<< customize) { "rid": Nothing, "timems": Nothing }



newtype Suggester = Suggester String
derive instance newtypeSuggester :: Newtype Suggester _
derive instance repGenericSuggester :: Generic Suggester _
instance showSuggester :: Show Suggester where show = genericShow
instance decodeSuggester :: Decode Suggester where decode = genericDecode options
instance encodeSuggester :: Encode Suggester where encode = genericEncode options



-- | <p>An autocomplete suggestion that matches the query string specified in a <code>SuggestRequest</code>. </p>
newtype SuggestionMatch = SuggestionMatch 
  { "suggestion" :: Maybe (String)
  , "score" :: Maybe (Number)
  , "id" :: Maybe (String)
  }
derive instance newtypeSuggestionMatch :: Newtype SuggestionMatch _
derive instance repGenericSuggestionMatch :: Generic SuggestionMatch _
instance showSuggestionMatch :: Show SuggestionMatch where show = genericShow
instance decodeSuggestionMatch :: Decode SuggestionMatch where decode = genericDecode options
instance encodeSuggestionMatch :: Encode SuggestionMatch where encode = genericEncode options

-- | Constructs SuggestionMatch from required parameters
newSuggestionMatch :: SuggestionMatch
newSuggestionMatch  = SuggestionMatch { "id": Nothing, "score": Nothing, "suggestion": Nothing }

-- | Constructs SuggestionMatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestionMatch' :: ( { "suggestion" :: Maybe (String) , "score" :: Maybe (Number) , "id" :: Maybe (String) } -> {"suggestion" :: Maybe (String) , "score" :: Maybe (Number) , "id" :: Maybe (String) } ) -> SuggestionMatch
newSuggestionMatch'  customize = (SuggestionMatch <<< customize) { "id": Nothing, "score": Nothing, "suggestion": Nothing }



newtype Suggestions = Suggestions (Array SuggestionMatch)
derive instance newtypeSuggestions :: Newtype Suggestions _
derive instance repGenericSuggestions :: Generic Suggestions _
instance showSuggestions :: Show Suggestions where show = genericShow
instance decodeSuggestions :: Decode Suggestions where decode = genericDecode options
instance encodeSuggestions :: Encode Suggestions where encode = genericEncode options



newtype SuggestionsSize = SuggestionsSize Number
derive instance newtypeSuggestionsSize :: Newtype SuggestionsSize _
derive instance repGenericSuggestionsSize :: Generic SuggestionsSize _
instance showSuggestionsSize :: Show SuggestionsSize where show = genericShow
instance decodeSuggestionsSize :: Decode SuggestionsSize where decode = genericDecode options
instance encodeSuggestionsSize :: Encode SuggestionsSize where encode = genericEncode options



-- | <p>Container for the parameters to the <code>UploadDocuments</code> request.</p>
newtype UploadDocumentsRequest = UploadDocumentsRequest 
  { "documents" :: (String)
  , "contentType" :: (ContentType)
  }
derive instance newtypeUploadDocumentsRequest :: Newtype UploadDocumentsRequest _
derive instance repGenericUploadDocumentsRequest :: Generic UploadDocumentsRequest _
instance showUploadDocumentsRequest :: Show UploadDocumentsRequest where show = genericShow
instance decodeUploadDocumentsRequest :: Decode UploadDocumentsRequest where decode = genericDecode options
instance encodeUploadDocumentsRequest :: Encode UploadDocumentsRequest where encode = genericEncode options

-- | Constructs UploadDocumentsRequest from required parameters
newUploadDocumentsRequest :: ContentType -> String -> UploadDocumentsRequest
newUploadDocumentsRequest _contentType _documents = UploadDocumentsRequest { "contentType": _contentType, "documents": _documents }

-- | Constructs UploadDocumentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadDocumentsRequest' :: ContentType -> String -> ( { "documents" :: (String) , "contentType" :: (ContentType) } -> {"documents" :: (String) , "contentType" :: (ContentType) } ) -> UploadDocumentsRequest
newUploadDocumentsRequest' _contentType _documents customize = (UploadDocumentsRequest <<< customize) { "contentType": _contentType, "documents": _documents }



-- | <p>Contains the response to an <code>UploadDocuments</code> request.</p>
newtype UploadDocumentsResponse = UploadDocumentsResponse 
  { "status" :: Maybe (String)
  , "adds" :: Maybe (Adds)
  , "deletes" :: Maybe (Deletes)
  , "warnings" :: Maybe (DocumentServiceWarnings)
  }
derive instance newtypeUploadDocumentsResponse :: Newtype UploadDocumentsResponse _
derive instance repGenericUploadDocumentsResponse :: Generic UploadDocumentsResponse _
instance showUploadDocumentsResponse :: Show UploadDocumentsResponse where show = genericShow
instance decodeUploadDocumentsResponse :: Decode UploadDocumentsResponse where decode = genericDecode options
instance encodeUploadDocumentsResponse :: Encode UploadDocumentsResponse where encode = genericEncode options

-- | Constructs UploadDocumentsResponse from required parameters
newUploadDocumentsResponse :: UploadDocumentsResponse
newUploadDocumentsResponse  = UploadDocumentsResponse { "adds": Nothing, "deletes": Nothing, "status": Nothing, "warnings": Nothing }

-- | Constructs UploadDocumentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadDocumentsResponse' :: ( { "status" :: Maybe (String) , "adds" :: Maybe (Adds) , "deletes" :: Maybe (Deletes) , "warnings" :: Maybe (DocumentServiceWarnings) } -> {"status" :: Maybe (String) , "adds" :: Maybe (Adds) , "deletes" :: Maybe (Deletes) , "warnings" :: Maybe (DocumentServiceWarnings) } ) -> UploadDocumentsResponse
newUploadDocumentsResponse'  customize = (UploadDocumentsResponse <<< customize) { "adds": Nothing, "deletes": Nothing, "status": Nothing, "warnings": Nothing }

