const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct TerrainArray_Type {
  x_TerrainPatchInstanceData : vec4<f32>,
}

type Arr = array<TerrainArray_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_Terrain {
  TerrainArray : Arr,
}

struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_2,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(5) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(7) var<uniform> x_35 : UnityInstancing_Terrain;

@group(1) @binding(6) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

var<private> vs_TEXCOORD6 : f32;

@group(0) @binding(11) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(0) @binding(10) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_356 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_400 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat4 : vec2<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : i32 = gl_InstanceIndex;
  let x_18 : i32 = x_14.unity_BaseInstanceID;
  u_xlati0 = (x_11 + x_18);
  let x_27 : vec4<f32> = in_POSITION0;
  let x_36 : i32 = u_xlati0;
  let x_39 : vec4<f32> = x_35.TerrainArray[x_36].x_TerrainPatchInstanceData;
  u_xlat4 = (vec2<f32>(x_27.x, x_27.y) + vec2<f32>(x_39.x, x_39.y));
  let x_44 : vec2<f32> = u_xlat4;
  let x_45 : i32 = u_xlati0;
  let x_47 : vec4<f32> = x_35.TerrainArray[x_45].x_TerrainPatchInstanceData;
  let x_49 : vec2<f32> = (x_44 * vec2<f32>(x_47.z, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_TerrainHeightmapRecipSize;
  u_xlat8 = (vec2<f32>(x_53.x, x_53.y) * vec2<f32>(x_60.z, x_60.w));
  let x_65 : vec2<f32> = u_xlat8;
  let x_74 : vec4<f32> = x_71.unity_LightmapST;
  let x_78 : vec4<f32> = x_71.unity_LightmapST;
  let x_80 : vec2<f32> = ((x_65 * vec2<f32>(x_74.x, x_74.y)) + vec2<f32>(x_78.z, x_78.w));
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_81.x, x_81.y, x_80.x, x_80.y);
  let x_83 : vec2<f32> = u_xlat8;
  let x_84 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  vs_TEXCOORD6 = 0.0f;
  let x_92 : vec4<f32> = u_xlat0;
  let x_97 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_92.x, x_92.y)));
  let x_98 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_97.x, x_97.y, x_98.z, x_98.w);
  let x_100 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_106 : vec2<f32> = (vec2<f32>(x_100.x, x_100.y) * vec2<f32>(x_104.x, x_104.z));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_119 : vec4<u32> = u_xlatu1;
  let x_123 : u32 = u_xlatu1.w;
  let x_125 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_119.x, x_119.y)), bitcast<i32>(x_123));
  let x_127 : vec3<f32> = vec3<f32>(x_125.x, x_125.y, x_125.z);
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_132 : vec4<u32> = u_xlatu1;
  let x_136 : u32 = u_xlatu1.w;
  let x_138 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_132.x, x_132.y)), bitcast<i32>(x_136));
  u_xlat8 = vec2<f32>(x_138.x, x_138.y);
  let x_143 : f32 = u_xlat8.y;
  let x_147 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_143 * 256.0f) + x_147);
  let x_151 : f32 = u_xlat8.x;
  let x_154 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_151 * x_154);
  let x_158 : f32 = u_xlat8.x;
  u_xlat8.x = (x_158 * 0.00389105058f);
  let x_163 : vec2<f32> = u_xlat8;
  let x_167 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_169 : vec3<f32> = (vec3<f32>(x_163.x, x_163.x, x_163.x) * vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_175 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.x, x_175.x, x_175.x)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_180.x, x_181.y, x_180.y, x_180.z);
  let x_185 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_187 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = u_xlat0;
  let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.y, x_187.y, x_187.y)) + vec3<f32>(x_190.x, x_190.z, x_190.w));
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_201 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec4<f32> = u_xlat2;
  let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec4<f32> = u_xlat1;
  let x_217 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_219 : vec3<f32> = (vec3<f32>(x_214.y, x_214.y, x_214.y) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.x, x_225.x)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_231.z, x_230.z);
  let x_234 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_236 : vec4<f32> = u_xlat1;
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.z, x_236.z, x_236.z)) + vec3<f32>(x_239.x, x_239.y, x_239.w));
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : f32 = u_xlat12;
  u_xlat12 = max(x_250, 1.17549435e-37f);
  let x_253 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_253);
  let x_255 : f32 = u_xlat12;
  let x_257 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = (vec3<f32>(x_255, x_255, x_255) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_264 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec3<f32>(x_264.x, x_264.y, x_264.z);
  let x_267 : f32 = u_xlat1.y;
  let x_269 : f32 = u_xlat1.y;
  u_xlat12 = (x_267 * x_269);
  let x_272 : f32 = u_xlat1.x;
  let x_274 : f32 = u_xlat1.x;
  let x_276 : f32 = u_xlat12;
  u_xlat12 = ((x_272 * x_274) + -(x_276));
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_279.y, x_279.z, x_279.z, x_279.x) * vec4<f32>(x_281.x, x_281.y, x_281.z, x_281.z));
  let x_288 : vec4<f32> = x_71.unity_SHBr;
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_288, x_289);
  let x_294 : vec4<f32> = x_71.unity_SHBg;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_294, x_295);
  let x_300 : vec4<f32> = x_71.unity_SHBb;
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_300, x_301);
  let x_306 : vec4<f32> = x_71.unity_SHC;
  let x_308 : f32 = u_xlat12;
  let x_311 : vec3<f32> = u_xlat3;
  let x_312 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308, x_308, x_308)) + x_311);
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  u_xlat1.w = 1.0f;
  let x_319 : vec4<f32> = x_71.unity_SHAr;
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_319, x_320);
  let x_325 : vec4<f32> = x_71.unity_SHAg;
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_325, x_326);
  let x_331 : vec4<f32> = x_71.unity_SHAb;
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_331, x_332);
  let x_335 : vec4<f32> = u_xlat2;
  let x_337 : vec3<f32> = u_xlat3;
  let x_338 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) + x_337);
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_343 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = max(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_348 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_348.x, x_348.y, x_348.z);
  let x_350 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = x_356.x_MainLightWorldToShadow[0i][1i];
  let x_360 : vec3<f32> = (vec3<f32>(x_350.y, x_350.y, x_350.y) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : vec4<f32> = x_356.x_MainLightWorldToShadow[0i][0i];
  let x_366 : vec4<f32> = u_xlat0;
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.x, x_366.x)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec4<f32> = x_356.x_MainLightWorldToShadow[0i][2i];
  let x_377 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = u_xlat1;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.z, x_377.z, x_377.z)) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : vec4<f32> = u_xlat1;
  let x_389 : vec4<f32> = x_356.x_MainLightWorldToShadow[0i][3i];
  let x_391 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) + vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec4<f32> = vs_TEXCOORD8;
  vs_TEXCOORD8 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  vs_TEXCOORD8.w = 0.0f;
  let x_396 : vec4<f32> = u_xlat0;
  let x_402 : vec4<f32> = x_400.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_396.y, x_396.y, x_396.y, x_396.y) * x_402);
  let x_405 : vec4<f32> = x_400.unity_MatrixVP[0i];
  let x_406 : vec4<f32> = u_xlat0;
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_405 * vec4<f32>(x_406.x, x_406.x, x_406.x, x_406.x)) + x_409);
  let x_412 : vec4<f32> = x_400.unity_MatrixVP[2i];
  let x_413 : vec4<f32> = u_xlat0;
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_412 * vec4<f32>(x_413.z, x_413.z, x_413.z, x_413.z)) + x_416);
  let x_422 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = x_400.unity_MatrixVP[3i];
  gl_Position = (x_422 + x_424);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD7_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD8_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD7, vs_TEXCOORD8, gl_Position);
}

