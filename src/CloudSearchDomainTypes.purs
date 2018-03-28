
module AWS.CloudSearchDomain.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
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
  { "value" :: NullOrUndefined (String)
  , "count" :: NullOrUndefined (Number)
  }
derive instance newtypeBucket :: Newtype Bucket _
derive instance repGenericBucket :: Generic Bucket _
instance showBucket :: Show Bucket where show = genericShow
instance decodeBucket :: Decode Bucket where decode = genericDecode options
instance encodeBucket :: Encode Bucket where encode = genericEncode options

-- | Constructs Bucket from required parameters
newBucket :: Bucket
newBucket  = Bucket { "count": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }

-- | Constructs Bucket's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBucket' :: ( { "value" :: NullOrUndefined (String) , "count" :: NullOrUndefined (Number) } -> {"value" :: NullOrUndefined (String) , "count" :: NullOrUndefined (Number) } ) -> Bucket
newBucket'  customize = (Bucket <<< customize) { "count": (NullOrUndefined Nothing), "value": (NullOrUndefined Nothing) }



-- | <p>A container for the calculated facet values and counts.</p>
newtype BucketInfo = BucketInfo 
  { "buckets" :: NullOrUndefined (BucketList)
  }
derive instance newtypeBucketInfo :: Newtype BucketInfo _
derive instance repGenericBucketInfo :: Generic BucketInfo _
instance showBucketInfo :: Show BucketInfo where show = genericShow
instance decodeBucketInfo :: Decode BucketInfo where decode = genericDecode options
instance encodeBucketInfo :: Encode BucketInfo where encode = genericEncode options

-- | Constructs BucketInfo from required parameters
newBucketInfo :: BucketInfo
newBucketInfo  = BucketInfo { "buckets": (NullOrUndefined Nothing) }

-- | Constructs BucketInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBucketInfo' :: ( { "buckets" :: NullOrUndefined (BucketList) } -> {"buckets" :: NullOrUndefined (BucketList) } ) -> BucketInfo
newBucketInfo'  customize = (BucketInfo <<< customize) { "buckets": (NullOrUndefined Nothing) }



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
  { "status" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeDocumentServiceException :: Newtype DocumentServiceException _
derive instance repGenericDocumentServiceException :: Generic DocumentServiceException _
instance showDocumentServiceException :: Show DocumentServiceException where show = genericShow
instance decodeDocumentServiceException :: Decode DocumentServiceException where decode = genericDecode options
instance encodeDocumentServiceException :: Encode DocumentServiceException where encode = genericEncode options

-- | Constructs DocumentServiceException from required parameters
newDocumentServiceException :: DocumentServiceException
newDocumentServiceException  = DocumentServiceException { "message": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs DocumentServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDocumentServiceException' :: ( { "status" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"status" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> DocumentServiceException
newDocumentServiceException'  customize = (DocumentServiceException <<< customize) { "message": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



-- | <p>A warning returned by the document service when an issue is discovered while processing an upload request.</p>
newtype DocumentServiceWarning = DocumentServiceWarning 
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeDocumentServiceWarning :: Newtype DocumentServiceWarning _
derive instance repGenericDocumentServiceWarning :: Generic DocumentServiceWarning _
instance showDocumentServiceWarning :: Show DocumentServiceWarning where show = genericShow
instance decodeDocumentServiceWarning :: Decode DocumentServiceWarning where decode = genericDecode options
instance encodeDocumentServiceWarning :: Encode DocumentServiceWarning where encode = genericEncode options

-- | Constructs DocumentServiceWarning from required parameters
newDocumentServiceWarning :: DocumentServiceWarning
newDocumentServiceWarning  = DocumentServiceWarning { "message": (NullOrUndefined Nothing) }

-- | Constructs DocumentServiceWarning's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDocumentServiceWarning' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> DocumentServiceWarning
newDocumentServiceWarning'  customize = (DocumentServiceWarning <<< customize) { "message": (NullOrUndefined Nothing) }



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
  { "min" :: NullOrUndefined (String)
  , "max" :: NullOrUndefined (String)
  , "count" :: NullOrUndefined (Number)
  , "missing" :: NullOrUndefined (Number)
  , "sum" :: NullOrUndefined (Number)
  , "sumOfSquares" :: NullOrUndefined (Number)
  , "mean" :: NullOrUndefined (String)
  , "stddev" :: NullOrUndefined (Number)
  }
derive instance newtypeFieldStats :: Newtype FieldStats _
derive instance repGenericFieldStats :: Generic FieldStats _
instance showFieldStats :: Show FieldStats where show = genericShow
instance decodeFieldStats :: Decode FieldStats where decode = genericDecode options
instance encodeFieldStats :: Encode FieldStats where encode = genericEncode options

-- | Constructs FieldStats from required parameters
newFieldStats :: FieldStats
newFieldStats  = FieldStats { "count": (NullOrUndefined Nothing), "max": (NullOrUndefined Nothing), "mean": (NullOrUndefined Nothing), "min": (NullOrUndefined Nothing), "missing": (NullOrUndefined Nothing), "stddev": (NullOrUndefined Nothing), "sum": (NullOrUndefined Nothing), "sumOfSquares": (NullOrUndefined Nothing) }

-- | Constructs FieldStats's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFieldStats' :: ( { "min" :: NullOrUndefined (String) , "max" :: NullOrUndefined (String) , "count" :: NullOrUndefined (Number) , "missing" :: NullOrUndefined (Number) , "sum" :: NullOrUndefined (Number) , "sumOfSquares" :: NullOrUndefined (Number) , "mean" :: NullOrUndefined (String) , "stddev" :: NullOrUndefined (Number) } -> {"min" :: NullOrUndefined (String) , "max" :: NullOrUndefined (String) , "count" :: NullOrUndefined (Number) , "missing" :: NullOrUndefined (Number) , "sum" :: NullOrUndefined (Number) , "sumOfSquares" :: NullOrUndefined (Number) , "mean" :: NullOrUndefined (String) , "stddev" :: NullOrUndefined (Number) } ) -> FieldStats
newFieldStats'  customize = (FieldStats <<< customize) { "count": (NullOrUndefined Nothing), "max": (NullOrUndefined Nothing), "mean": (NullOrUndefined Nothing), "min": (NullOrUndefined Nothing), "missing": (NullOrUndefined Nothing), "stddev": (NullOrUndefined Nothing), "sum": (NullOrUndefined Nothing), "sumOfSquares": (NullOrUndefined Nothing) }



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
  { "id" :: NullOrUndefined (String)
  , "fields" :: NullOrUndefined (Fields)
  , "exprs" :: NullOrUndefined (Exprs)
  , "highlights" :: NullOrUndefined (Highlights)
  }
derive instance newtypeHit :: Newtype Hit _
derive instance repGenericHit :: Generic Hit _
instance showHit :: Show Hit where show = genericShow
instance decodeHit :: Decode Hit where decode = genericDecode options
instance encodeHit :: Encode Hit where encode = genericEncode options

-- | Constructs Hit from required parameters
newHit :: Hit
newHit  = Hit { "exprs": (NullOrUndefined Nothing), "fields": (NullOrUndefined Nothing), "highlights": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing) }

-- | Constructs Hit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHit' :: ( { "id" :: NullOrUndefined (String) , "fields" :: NullOrUndefined (Fields) , "exprs" :: NullOrUndefined (Exprs) , "highlights" :: NullOrUndefined (Highlights) } -> {"id" :: NullOrUndefined (String) , "fields" :: NullOrUndefined (Fields) , "exprs" :: NullOrUndefined (Exprs) , "highlights" :: NullOrUndefined (Highlights) } ) -> Hit
newHit'  customize = (Hit <<< customize) { "exprs": (NullOrUndefined Nothing), "fields": (NullOrUndefined Nothing), "highlights": (NullOrUndefined Nothing), "id": (NullOrUndefined Nothing) }



newtype HitList = HitList (Array Hit)
derive instance newtypeHitList :: Newtype HitList _
derive instance repGenericHitList :: Generic HitList _
instance showHitList :: Show HitList where show = genericShow
instance decodeHitList :: Decode HitList where decode = genericDecode options
instance encodeHitList :: Encode HitList where encode = genericEncode options



-- | <p>The collection of documents that match the search request.</p>
newtype Hits = Hits 
  { "found" :: NullOrUndefined (Number)
  , "start" :: NullOrUndefined (Number)
  , "cursor" :: NullOrUndefined (String)
  , "hit" :: NullOrUndefined (HitList)
  }
derive instance newtypeHits :: Newtype Hits _
derive instance repGenericHits :: Generic Hits _
instance showHits :: Show Hits where show = genericShow
instance decodeHits :: Decode Hits where decode = genericDecode options
instance encodeHits :: Encode Hits where encode = genericEncode options

-- | Constructs Hits from required parameters
newHits :: Hits
newHits  = Hits { "cursor": (NullOrUndefined Nothing), "found": (NullOrUndefined Nothing), "hit": (NullOrUndefined Nothing), "start": (NullOrUndefined Nothing) }

-- | Constructs Hits's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHits' :: ( { "found" :: NullOrUndefined (Number) , "start" :: NullOrUndefined (Number) , "cursor" :: NullOrUndefined (String) , "hit" :: NullOrUndefined (HitList) } -> {"found" :: NullOrUndefined (Number) , "start" :: NullOrUndefined (Number) , "cursor" :: NullOrUndefined (String) , "hit" :: NullOrUndefined (HitList) } ) -> Hits
newHits'  customize = (Hits <<< customize) { "cursor": (NullOrUndefined Nothing), "found": (NullOrUndefined Nothing), "hit": (NullOrUndefined Nothing), "start": (NullOrUndefined Nothing) }



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
  { "message" :: NullOrUndefined (String)
  }
derive instance newtypeSearchException :: Newtype SearchException _
derive instance repGenericSearchException :: Generic SearchException _
instance showSearchException :: Show SearchException where show = genericShow
instance decodeSearchException :: Decode SearchException where decode = genericDecode options
instance encodeSearchException :: Encode SearchException where encode = genericEncode options

-- | Constructs SearchException from required parameters
newSearchException :: SearchException
newSearchException  = SearchException { "message": (NullOrUndefined Nothing) }

-- | Constructs SearchException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchException' :: ( { "message" :: NullOrUndefined (String) } -> {"message" :: NullOrUndefined (String) } ) -> SearchException
newSearchException'  customize = (SearchException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Container for the parameters to the <code>Search</code> request.</p>
newtype SearchRequest = SearchRequest 
  { "cursor" :: NullOrUndefined (Cursor)
  , "expr" :: NullOrUndefined (Expr)
  , "facet" :: NullOrUndefined (Facet)
  , "filterQuery" :: NullOrUndefined (FilterQuery)
  , "highlight" :: NullOrUndefined (Highlight)
  , "partial" :: NullOrUndefined (Partial'')
  , "query" :: (Query)
  , "queryOptions" :: NullOrUndefined (QueryOptions)
  , "queryParser" :: NullOrUndefined (QueryParser)
  , "return" :: NullOrUndefined (Return)
  , "size" :: NullOrUndefined (Size)
  , "sort" :: NullOrUndefined (Sort)
  , "start" :: NullOrUndefined (Start)
  , "stats" :: NullOrUndefined (Stat)
  }
derive instance newtypeSearchRequest :: Newtype SearchRequest _
derive instance repGenericSearchRequest :: Generic SearchRequest _
instance showSearchRequest :: Show SearchRequest where show = genericShow
instance decodeSearchRequest :: Decode SearchRequest where decode = genericDecode options
instance encodeSearchRequest :: Encode SearchRequest where encode = genericEncode options

-- | Constructs SearchRequest from required parameters
newSearchRequest :: Query -> SearchRequest
newSearchRequest _query = SearchRequest { "query": _query, "cursor": (NullOrUndefined Nothing), "expr": (NullOrUndefined Nothing), "facet": (NullOrUndefined Nothing), "filterQuery": (NullOrUndefined Nothing), "highlight": (NullOrUndefined Nothing), "partial": (NullOrUndefined Nothing), "queryOptions": (NullOrUndefined Nothing), "queryParser": (NullOrUndefined Nothing), "return": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing), "sort": (NullOrUndefined Nothing), "start": (NullOrUndefined Nothing), "stats": (NullOrUndefined Nothing) }

-- | Constructs SearchRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchRequest' :: Query -> ( { "cursor" :: NullOrUndefined (Cursor) , "expr" :: NullOrUndefined (Expr) , "facet" :: NullOrUndefined (Facet) , "filterQuery" :: NullOrUndefined (FilterQuery) , "highlight" :: NullOrUndefined (Highlight) , "partial" :: NullOrUndefined (Partial'') , "query" :: (Query) , "queryOptions" :: NullOrUndefined (QueryOptions) , "queryParser" :: NullOrUndefined (QueryParser) , "return" :: NullOrUndefined (Return) , "size" :: NullOrUndefined (Size) , "sort" :: NullOrUndefined (Sort) , "start" :: NullOrUndefined (Start) , "stats" :: NullOrUndefined (Stat) } -> {"cursor" :: NullOrUndefined (Cursor) , "expr" :: NullOrUndefined (Expr) , "facet" :: NullOrUndefined (Facet) , "filterQuery" :: NullOrUndefined (FilterQuery) , "highlight" :: NullOrUndefined (Highlight) , "partial" :: NullOrUndefined (Partial'') , "query" :: (Query) , "queryOptions" :: NullOrUndefined (QueryOptions) , "queryParser" :: NullOrUndefined (QueryParser) , "return" :: NullOrUndefined (Return) , "size" :: NullOrUndefined (Size) , "sort" :: NullOrUndefined (Sort) , "start" :: NullOrUndefined (Start) , "stats" :: NullOrUndefined (Stat) } ) -> SearchRequest
newSearchRequest' _query customize = (SearchRequest <<< customize) { "query": _query, "cursor": (NullOrUndefined Nothing), "expr": (NullOrUndefined Nothing), "facet": (NullOrUndefined Nothing), "filterQuery": (NullOrUndefined Nothing), "highlight": (NullOrUndefined Nothing), "partial": (NullOrUndefined Nothing), "queryOptions": (NullOrUndefined Nothing), "queryParser": (NullOrUndefined Nothing), "return": (NullOrUndefined Nothing), "size": (NullOrUndefined Nothing), "sort": (NullOrUndefined Nothing), "start": (NullOrUndefined Nothing), "stats": (NullOrUndefined Nothing) }



-- | <p>The result of a <code>Search</code> request. Contains the documents that match the specified search criteria and any requested fields, highlights, and facet information.</p>
newtype SearchResponse = SearchResponse 
  { "status" :: NullOrUndefined (SearchStatus)
  , "hits" :: NullOrUndefined (Hits)
  , "facets" :: NullOrUndefined (Facets)
  , "stats" :: NullOrUndefined (Stats)
  }
derive instance newtypeSearchResponse :: Newtype SearchResponse _
derive instance repGenericSearchResponse :: Generic SearchResponse _
instance showSearchResponse :: Show SearchResponse where show = genericShow
instance decodeSearchResponse :: Decode SearchResponse where decode = genericDecode options
instance encodeSearchResponse :: Encode SearchResponse where encode = genericEncode options

-- | Constructs SearchResponse from required parameters
newSearchResponse :: SearchResponse
newSearchResponse  = SearchResponse { "facets": (NullOrUndefined Nothing), "hits": (NullOrUndefined Nothing), "stats": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs SearchResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchResponse' :: ( { "status" :: NullOrUndefined (SearchStatus) , "hits" :: NullOrUndefined (Hits) , "facets" :: NullOrUndefined (Facets) , "stats" :: NullOrUndefined (Stats) } -> {"status" :: NullOrUndefined (SearchStatus) , "hits" :: NullOrUndefined (Hits) , "facets" :: NullOrUndefined (Facets) , "stats" :: NullOrUndefined (Stats) } ) -> SearchResponse
newSearchResponse'  customize = (SearchResponse <<< customize) { "facets": (NullOrUndefined Nothing), "hits": (NullOrUndefined Nothing), "stats": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



-- | <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
newtype SearchStatus = SearchStatus 
  { "timems" :: NullOrUndefined (Number)
  , "rid" :: NullOrUndefined (String)
  }
derive instance newtypeSearchStatus :: Newtype SearchStatus _
derive instance repGenericSearchStatus :: Generic SearchStatus _
instance showSearchStatus :: Show SearchStatus where show = genericShow
instance decodeSearchStatus :: Decode SearchStatus where decode = genericDecode options
instance encodeSearchStatus :: Encode SearchStatus where encode = genericEncode options

-- | Constructs SearchStatus from required parameters
newSearchStatus :: SearchStatus
newSearchStatus  = SearchStatus { "rid": (NullOrUndefined Nothing), "timems": (NullOrUndefined Nothing) }

-- | Constructs SearchStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchStatus' :: ( { "timems" :: NullOrUndefined (Number) , "rid" :: NullOrUndefined (String) } -> {"timems" :: NullOrUndefined (Number) , "rid" :: NullOrUndefined (String) } ) -> SearchStatus
newSearchStatus'  customize = (SearchStatus <<< customize) { "rid": (NullOrUndefined Nothing), "timems": (NullOrUndefined Nothing) }



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
  { "query" :: NullOrUndefined (String)
  , "found" :: NullOrUndefined (Number)
  , "suggestions" :: NullOrUndefined (Suggestions)
  }
derive instance newtypeSuggestModel :: Newtype SuggestModel _
derive instance repGenericSuggestModel :: Generic SuggestModel _
instance showSuggestModel :: Show SuggestModel where show = genericShow
instance decodeSuggestModel :: Decode SuggestModel where decode = genericDecode options
instance encodeSuggestModel :: Encode SuggestModel where encode = genericEncode options

-- | Constructs SuggestModel from required parameters
newSuggestModel :: SuggestModel
newSuggestModel  = SuggestModel { "found": (NullOrUndefined Nothing), "query": (NullOrUndefined Nothing), "suggestions": (NullOrUndefined Nothing) }

-- | Constructs SuggestModel's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestModel' :: ( { "query" :: NullOrUndefined (String) , "found" :: NullOrUndefined (Number) , "suggestions" :: NullOrUndefined (Suggestions) } -> {"query" :: NullOrUndefined (String) , "found" :: NullOrUndefined (Number) , "suggestions" :: NullOrUndefined (Suggestions) } ) -> SuggestModel
newSuggestModel'  customize = (SuggestModel <<< customize) { "found": (NullOrUndefined Nothing), "query": (NullOrUndefined Nothing), "suggestions": (NullOrUndefined Nothing) }



-- | <p>Container for the parameters to the <code>Suggest</code> request.</p>
newtype SuggestRequest = SuggestRequest 
  { "query" :: (Query)
  , "suggester" :: (Suggester)
  , "size" :: NullOrUndefined (SuggestionsSize)
  }
derive instance newtypeSuggestRequest :: Newtype SuggestRequest _
derive instance repGenericSuggestRequest :: Generic SuggestRequest _
instance showSuggestRequest :: Show SuggestRequest where show = genericShow
instance decodeSuggestRequest :: Decode SuggestRequest where decode = genericDecode options
instance encodeSuggestRequest :: Encode SuggestRequest where encode = genericEncode options

-- | Constructs SuggestRequest from required parameters
newSuggestRequest :: Query -> Suggester -> SuggestRequest
newSuggestRequest _query _suggester = SuggestRequest { "query": _query, "suggester": _suggester, "size": (NullOrUndefined Nothing) }

-- | Constructs SuggestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestRequest' :: Query -> Suggester -> ( { "query" :: (Query) , "suggester" :: (Suggester) , "size" :: NullOrUndefined (SuggestionsSize) } -> {"query" :: (Query) , "suggester" :: (Suggester) , "size" :: NullOrUndefined (SuggestionsSize) } ) -> SuggestRequest
newSuggestRequest' _query _suggester customize = (SuggestRequest <<< customize) { "query": _query, "suggester": _suggester, "size": (NullOrUndefined Nothing) }



-- | <p>Contains the response to a <code>Suggest</code> request.</p>
newtype SuggestResponse = SuggestResponse 
  { "status" :: NullOrUndefined (SuggestStatus)
  , "suggest" :: NullOrUndefined (SuggestModel)
  }
derive instance newtypeSuggestResponse :: Newtype SuggestResponse _
derive instance repGenericSuggestResponse :: Generic SuggestResponse _
instance showSuggestResponse :: Show SuggestResponse where show = genericShow
instance decodeSuggestResponse :: Decode SuggestResponse where decode = genericDecode options
instance encodeSuggestResponse :: Encode SuggestResponse where encode = genericEncode options

-- | Constructs SuggestResponse from required parameters
newSuggestResponse :: SuggestResponse
newSuggestResponse  = SuggestResponse { "status": (NullOrUndefined Nothing), "suggest": (NullOrUndefined Nothing) }

-- | Constructs SuggestResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestResponse' :: ( { "status" :: NullOrUndefined (SuggestStatus) , "suggest" :: NullOrUndefined (SuggestModel) } -> {"status" :: NullOrUndefined (SuggestStatus) , "suggest" :: NullOrUndefined (SuggestModel) } ) -> SuggestResponse
newSuggestResponse'  customize = (SuggestResponse <<< customize) { "status": (NullOrUndefined Nothing), "suggest": (NullOrUndefined Nothing) }



-- | <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
newtype SuggestStatus = SuggestStatus 
  { "timems" :: NullOrUndefined (Number)
  , "rid" :: NullOrUndefined (String)
  }
derive instance newtypeSuggestStatus :: Newtype SuggestStatus _
derive instance repGenericSuggestStatus :: Generic SuggestStatus _
instance showSuggestStatus :: Show SuggestStatus where show = genericShow
instance decodeSuggestStatus :: Decode SuggestStatus where decode = genericDecode options
instance encodeSuggestStatus :: Encode SuggestStatus where encode = genericEncode options

-- | Constructs SuggestStatus from required parameters
newSuggestStatus :: SuggestStatus
newSuggestStatus  = SuggestStatus { "rid": (NullOrUndefined Nothing), "timems": (NullOrUndefined Nothing) }

-- | Constructs SuggestStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestStatus' :: ( { "timems" :: NullOrUndefined (Number) , "rid" :: NullOrUndefined (String) } -> {"timems" :: NullOrUndefined (Number) , "rid" :: NullOrUndefined (String) } ) -> SuggestStatus
newSuggestStatus'  customize = (SuggestStatus <<< customize) { "rid": (NullOrUndefined Nothing), "timems": (NullOrUndefined Nothing) }



newtype Suggester = Suggester String
derive instance newtypeSuggester :: Newtype Suggester _
derive instance repGenericSuggester :: Generic Suggester _
instance showSuggester :: Show Suggester where show = genericShow
instance decodeSuggester :: Decode Suggester where decode = genericDecode options
instance encodeSuggester :: Encode Suggester where encode = genericEncode options



-- | <p>An autocomplete suggestion that matches the query string specified in a <code>SuggestRequest</code>. </p>
newtype SuggestionMatch = SuggestionMatch 
  { "suggestion" :: NullOrUndefined (String)
  , "score" :: NullOrUndefined (Number)
  , "id" :: NullOrUndefined (String)
  }
derive instance newtypeSuggestionMatch :: Newtype SuggestionMatch _
derive instance repGenericSuggestionMatch :: Generic SuggestionMatch _
instance showSuggestionMatch :: Show SuggestionMatch where show = genericShow
instance decodeSuggestionMatch :: Decode SuggestionMatch where decode = genericDecode options
instance encodeSuggestionMatch :: Encode SuggestionMatch where encode = genericEncode options

-- | Constructs SuggestionMatch from required parameters
newSuggestionMatch :: SuggestionMatch
newSuggestionMatch  = SuggestionMatch { "id": (NullOrUndefined Nothing), "score": (NullOrUndefined Nothing), "suggestion": (NullOrUndefined Nothing) }

-- | Constructs SuggestionMatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSuggestionMatch' :: ( { "suggestion" :: NullOrUndefined (String) , "score" :: NullOrUndefined (Number) , "id" :: NullOrUndefined (String) } -> {"suggestion" :: NullOrUndefined (String) , "score" :: NullOrUndefined (Number) , "id" :: NullOrUndefined (String) } ) -> SuggestionMatch
newSuggestionMatch'  customize = (SuggestionMatch <<< customize) { "id": (NullOrUndefined Nothing), "score": (NullOrUndefined Nothing), "suggestion": (NullOrUndefined Nothing) }



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
  { "status" :: NullOrUndefined (String)
  , "adds" :: NullOrUndefined (Adds)
  , "deletes" :: NullOrUndefined (Deletes)
  , "warnings" :: NullOrUndefined (DocumentServiceWarnings)
  }
derive instance newtypeUploadDocumentsResponse :: Newtype UploadDocumentsResponse _
derive instance repGenericUploadDocumentsResponse :: Generic UploadDocumentsResponse _
instance showUploadDocumentsResponse :: Show UploadDocumentsResponse where show = genericShow
instance decodeUploadDocumentsResponse :: Decode UploadDocumentsResponse where decode = genericDecode options
instance encodeUploadDocumentsResponse :: Encode UploadDocumentsResponse where encode = genericEncode options

-- | Constructs UploadDocumentsResponse from required parameters
newUploadDocumentsResponse :: UploadDocumentsResponse
newUploadDocumentsResponse  = UploadDocumentsResponse { "adds": (NullOrUndefined Nothing), "deletes": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "warnings": (NullOrUndefined Nothing) }

-- | Constructs UploadDocumentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadDocumentsResponse' :: ( { "status" :: NullOrUndefined (String) , "adds" :: NullOrUndefined (Adds) , "deletes" :: NullOrUndefined (Deletes) , "warnings" :: NullOrUndefined (DocumentServiceWarnings) } -> {"status" :: NullOrUndefined (String) , "adds" :: NullOrUndefined (Adds) , "deletes" :: NullOrUndefined (Deletes) , "warnings" :: NullOrUndefined (DocumentServiceWarnings) } ) -> UploadDocumentsResponse
newUploadDocumentsResponse'  customize = (UploadDocumentsResponse <<< customize) { "adds": (NullOrUndefined Nothing), "deletes": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing), "warnings": (NullOrUndefined Nothing) }

