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

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(7) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(9) var<uniform> x_35 : UnityInstancing_Terrain;

@group(1) @binding(8) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

@group(0) @binding(14) var x_TerrainHeightmapTexture : texture_2d<f32>;

@group(0) @binding(15) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_212 : VGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat4 : vec2<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatb12 : bool;
  var x_236 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat13 : f32;
  var x_345 : f32;
  var x_357 : f32;
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
  let x_89 : vec4<f32> = u_xlat0;
  let x_94 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_89.x, x_89.y)));
  let x_95 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_94.x, x_94.y, x_95.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_103 : vec2<f32> = (vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.z));
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_104.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_115 : vec4<u32> = u_xlatu1;
  let x_119 : u32 = u_xlatu1.w;
  let x_121 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_115.x, x_115.y)), bitcast<i32>(x_119));
  u_xlat8 = vec2<f32>(x_121.x, x_121.y);
  let x_126 : vec4<u32> = u_xlatu1;
  let x_130 : u32 = u_xlatu1.w;
  let x_132 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_126.x, x_126.y)), bitcast<i32>(x_130));
  let x_134 : vec3<f32> = vec3<f32>(x_132.x, x_132.y, x_132.z);
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_137.z, x_137.x, x_137.y, x_137.z) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_148 : f32 = u_xlat8.y;
  let x_152 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_148 * 256.0f) + x_152);
  let x_156 : f32 = u_xlat8.x;
  let x_159 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_156 * x_159);
  let x_163 : f32 = u_xlat8.x;
  u_xlat8.x = (x_163 * 0.00389105058f);
  let x_169 : vec2<f32> = u_xlat8;
  let x_173 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_169.x, x_169.x, x_169.x) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_179 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = u_xlat2;
  let x_183 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_179.x, x_179.x, x_179.x)) + x_182);
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_184.y, x_183.y, x_183.z);
  let x_188 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_190 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat0;
  let x_195 : vec3<f32> = ((vec3<f32>(x_188.x, x_188.y, x_188.z) * vec3<f32>(x_190.y, x_190.y, x_190.y)) + vec3<f32>(x_193.x, x_193.z, x_193.w));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : vec4<f32> = u_xlat0;
  let x_202 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_204 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) + vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_207 : vec4<f32> = u_xlat0;
  let x_215 : vec3<f32> = x_212.x_WorldSpaceCameraPos;
  u_xlat2 = (-(vec3<f32>(x_207.x, x_207.y, x_207.z)) + x_215);
  let x_218 : vec3<f32> = u_xlat2;
  let x_219 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_218, x_219);
  let x_221 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_221);
  let x_223 : f32 = u_xlat12;
  let x_225 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_223, x_223, x_223) * x_225);
  let x_231 : f32 = x_212.unity_OrthoParams.w;
  u_xlatb12 = (x_231 == 0.0f);
  let x_235 : bool = u_xlatb12;
  if (x_235) {
    let x_240 : f32 = u_xlat2.x;
    x_236 = x_240;
  } else {
    let x_243 : f32 = x_212.unity_MatrixV[0i].z;
    x_236 = x_243;
  }
  let x_244 : f32 = x_236;
  vs_TEXCOORD3.w = x_244;
  let x_248 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_248.z, x_248.z, x_248.z) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_255 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_257 : vec4<f32> = u_xlat1;
  let x_260 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257.y, x_257.y, x_257.y)) + x_260);
  let x_263 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_265 : vec4<f32> = u_xlat1;
  let x_268 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265.w, x_265.w, x_265.w)) + x_268);
  let x_270 : vec3<f32> = u_xlat3;
  let x_271 : vec3<f32> = u_xlat3;
  u_xlat2.x = dot(x_270, x_271);
  let x_275 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_275, 1.17549435e-37f);
  let x_280 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_280);
  let x_283 : vec3<f32> = u_xlat2;
  let x_285 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_283.x, x_283.x, x_283.x) * x_285);
  let x_287 : vec3<f32> = u_xlat3;
  let x_288 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec2<f32>(x_291.z, x_291.w) * vec2<f32>(1.0f, 0.0f));
  let x_296 : vec4<f32> = u_xlat1;
  let x_300 : vec2<f32> = u_xlat9;
  let x_302 : vec2<f32> = ((vec2<f32>(x_296.x, x_296.y) * vec2<f32>(0.0f, 1.0f)) + -(x_300));
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
  let x_306 : vec4<f32> = u_xlat1;
  let x_309 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = u_xlat5;
  let x_319 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.x, x_315.x)) + x_318);
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : f32 = u_xlat13;
  u_xlat13 = max(x_328, 1.17549435e-37f);
  let x_330 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_330);
  let x_332 : f32 = u_xlat13;
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : vec3<f32> = (vec3<f32>(x_332, x_332, x_332) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : vec4<f32> = u_xlat1;
  let x_341 : vec3<f32> = vec3<f32>(x_340.x, x_340.y, x_340.z);
  let x_342 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : bool = u_xlatb12;
  if (x_344) {
    let x_349 : f32 = u_xlat2.y;
    x_345 = x_349;
  } else {
    let x_352 : f32 = x_212.unity_MatrixV[1i].z;
    x_345 = x_352;
  }
  let x_353 : f32 = x_345;
  vs_TEXCOORD4.w = x_353;
  let x_356 : bool = u_xlatb12;
  if (x_356) {
    let x_361 : f32 = u_xlat2.z;
    x_357 = x_361;
  } else {
    let x_364 : f32 = x_212.unity_MatrixV[2i].z;
    x_357 = x_364;
  }
  let x_365 : f32 = x_357;
  vs_TEXCOORD5.w = x_365;
  let x_367 : vec4<f32> = u_xlat1;
  let x_369 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec3<f32>(x_367.y, x_367.z, x_367.x) * vec3<f32>(x_369.z, x_369.x, x_369.y));
  let x_372 : vec3<f32> = u_xlat3;
  let x_374 : vec4<f32> = u_xlat1;
  let x_377 : vec3<f32> = u_xlat2;
  let x_379 : vec3<f32> = ((vec3<f32>(x_372.y, x_372.z, x_372.x) * vec3<f32>(x_374.z, x_374.x, x_374.y)) + -(x_377));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_383 : f32 = x_71.unity_WorldTransformParams.w;
  u_xlatb12 = (x_383 >= 0.0f);
  let x_385 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_385);
  let x_387 : f32 = u_xlat12;
  let x_389 : vec4<f32> = u_xlat1;
  let x_391 : vec3<f32> = (vec3<f32>(x_387, x_387, x_387) * vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_396 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_396.x, x_396.y, x_396.z);
  vs_TEXCOORD6 = 0.0f;
  let x_400 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = x_212.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_400.y, x_400.y, x_400.y, x_400.y) * x_403);
  let x_406 : vec4<f32> = x_212.unity_MatrixVP[0i];
  let x_407 : vec4<f32> = u_xlat0;
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_406 * vec4<f32>(x_407.x, x_407.x, x_407.x, x_407.x)) + x_410);
  let x_413 : vec4<f32> = x_212.unity_MatrixVP[2i];
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_413 * vec4<f32>(x_414.z, x_414.z, x_414.z, x_414.z)) + x_417);
  let x_423 : vec4<f32> = u_xlat0;
  let x_425 : vec4<f32> = x_212.unity_MatrixVP[3i];
  gl_Position = (x_423 + x_425);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@builtin(instance_index) gl_InstanceIndex_param : u32, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, gl_Position);
}

