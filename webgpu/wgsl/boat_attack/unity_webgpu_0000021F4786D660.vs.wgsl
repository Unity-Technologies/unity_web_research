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
  unity_MatrixVP : mat4x4<f32>,
}

var<private> gl_InstanceIndex : i32;

@group(1) @binding(6) var<uniform> x_14 : UnityDrawCallInfo;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(7) var<uniform> x_35 : UnityInstancing_Terrain;

@group(1) @binding(3) var<uniform> x_57 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_71 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

@group(0) @binding(17) var x_TerrainNormalmapTexture : texture_2d<f32>;

@group(0) @binding(16) var x_TerrainHeightmapTexture : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_404 : VGlobals;

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
  let x_87 : vec2<f32> = u_xlat8;
  let x_90 : vec4<f32> = x_57.x_Splat0_ST;
  let x_94 : vec4<f32> = x_57.x_Splat0_ST;
  let x_96 : vec2<f32> = ((x_87 * vec2<f32>(x_90.x, x_90.y)) + vec2<f32>(x_94.z, x_94.w));
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_99 : vec2<f32> = u_xlat8;
  let x_102 : vec4<f32> = x_57.x_Splat1_ST;
  let x_106 : vec4<f32> = x_57.x_Splat1_ST;
  let x_108 : vec2<f32> = ((x_99 * vec2<f32>(x_102.x, x_102.y)) + vec2<f32>(x_106.z, x_106.w));
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_109.x, x_109.y, x_108.x, x_108.y);
  let x_112 : vec2<f32> = u_xlat8;
  let x_115 : vec4<f32> = x_57.x_Splat2_ST;
  let x_119 : vec4<f32> = x_57.x_Splat2_ST;
  let x_121 : vec2<f32> = ((x_112 * vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_119.z, x_119.w));
  let x_122 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_124 : vec2<f32> = u_xlat8;
  let x_127 : vec4<f32> = x_57.x_Splat3_ST;
  let x_131 : vec4<f32> = x_57.x_Splat3_ST;
  let x_133 : vec2<f32> = ((x_124 * vec2<f32>(x_127.x, x_127.y)) + vec2<f32>(x_131.z, x_131.w));
  let x_134 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_134.x, x_134.y, x_133.x, x_133.y);
  vs_TEXCOORD6 = 0.0f;
  let x_142 : vec4<f32> = u_xlat0;
  let x_147 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_142.x, x_142.y)));
  let x_148 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_147.x, x_147.y, x_148.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = x_57.x_TerrainHeightmapScale;
  let x_156 : vec2<f32> = (vec2<f32>(x_150.x, x_150.y) * vec2<f32>(x_154.x, x_154.z));
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_169 : vec4<u32> = u_xlatu1;
  let x_173 : u32 = u_xlatu1.w;
  let x_175 : vec4<f32> = textureLoad(x_TerrainNormalmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_169.x, x_169.y)), bitcast<i32>(x_173));
  let x_177 : vec3<f32> = vec3<f32>(x_175.x, x_175.y, x_175.z);
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_182 : vec4<u32> = u_xlatu1;
  let x_186 : u32 = u_xlatu1.w;
  let x_188 : vec4<f32> = textureLoad(x_TerrainHeightmapTexture, bitcast<vec2<i32>>(vec2<u32>(x_182.x, x_182.y)), bitcast<i32>(x_186));
  u_xlat8 = vec2<f32>(x_188.x, x_188.y);
  let x_193 : f32 = u_xlat8.y;
  let x_197 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_193 * 256.0f) + x_197);
  let x_201 : f32 = u_xlat8.x;
  let x_204 : f32 = x_57.x_TerrainHeightmapScale.y;
  u_xlat8.x = (x_201 * x_204);
  let x_208 : f32 = u_xlat8.x;
  u_xlat8.x = (x_208 * 0.00389105058f);
  let x_213 : vec2<f32> = u_xlat8;
  let x_217 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_219 : vec3<f32> = (vec3<f32>(x_213.x, x_213.x, x_213.x) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_225 : vec4<f32> = u_xlat0;
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.x, x_225.x)) + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_230.x, x_231.y, x_230.y, x_230.z);
  let x_235 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_237 : vec4<f32> = u_xlat0;
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.y, x_237.y, x_237.y)) + vec3<f32>(x_240.x, x_240.z, x_240.w));
  let x_243 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat0;
  let x_249 : vec4<f32> = x_71.unity_ObjectToWorld[3i];
  let x_251 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) + vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat2;
  let x_261 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat1;
  let x_267 : vec4<f32> = x_71.unity_ObjectToWorld[1i];
  let x_269 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec4<f32> = x_71.unity_ObjectToWorld[0i];
  let x_275 : vec4<f32> = u_xlat1;
  let x_278 : vec4<f32> = u_xlat2;
  let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.x, x_275.x, x_275.x)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_280.x, x_280.y, x_281.z, x_280.z);
  let x_284 : vec4<f32> = x_71.unity_ObjectToWorld[2i];
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286.z, x_286.z, x_286.z)) + vec3<f32>(x_289.x, x_289.y, x_289.w));
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : f32 = u_xlat12;
  u_xlat12 = max(x_300, 1.17549435e-37f);
  let x_303 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_303);
  let x_305 : f32 = u_xlat12;
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = (vec3<f32>(x_305, x_305, x_305) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_314 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec3<f32>(x_314.x, x_314.y, x_314.z);
  let x_317 : f32 = u_xlat1.y;
  let x_319 : f32 = u_xlat1.y;
  u_xlat12 = (x_317 * x_319);
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat1.x;
  let x_326 : f32 = u_xlat12;
  u_xlat12 = ((x_322 * x_324) + -(x_326));
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_329.y, x_329.z, x_329.z, x_329.x) * vec4<f32>(x_331.x, x_331.y, x_331.z, x_331.z));
  let x_338 : vec4<f32> = x_71.unity_SHBr;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_338, x_339);
  let x_344 : vec4<f32> = x_71.unity_SHBg;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_344, x_345);
  let x_350 : vec4<f32> = x_71.unity_SHBb;
  let x_351 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_350, x_351);
  let x_356 : vec4<f32> = x_71.unity_SHC;
  let x_358 : f32 = u_xlat12;
  let x_361 : vec3<f32> = u_xlat3;
  let x_362 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358, x_358, x_358)) + x_361);
  let x_363 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  u_xlat1.w = 1.0f;
  let x_369 : vec4<f32> = x_71.unity_SHAr;
  let x_370 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_369, x_370);
  let x_375 : vec4<f32> = x_71.unity_SHAg;
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_375, x_376);
  let x_381 : vec4<f32> = x_71.unity_SHAb;
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_381, x_382);
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec3<f32> = u_xlat3;
  let x_388 : vec3<f32> = (vec3<f32>(x_385.x, x_385.y, x_385.z) + x_387);
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_393 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = max(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_398 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_398.x, x_398.y, x_398.z);
  let x_400 : vec4<f32> = u_xlat0;
  let x_406 : vec4<f32> = x_404.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_400.y, x_400.y, x_400.y, x_400.y) * x_406);
  let x_409 : vec4<f32> = x_404.unity_MatrixVP[0i];
  let x_410 : vec4<f32> = u_xlat0;
  let x_413 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_409 * vec4<f32>(x_410.x, x_410.x, x_410.x, x_410.x)) + x_413);
  let x_416 : vec4<f32> = x_404.unity_MatrixVP[2i];
  let x_417 : vec4<f32> = u_xlat0;
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_416 * vec4<f32>(x_417.z, x_417.z, x_417.z, x_417.z)) + x_420);
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec4<f32> = x_404.unity_MatrixVP[3i];
  gl_Position = (x_426 + x_428);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
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
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}

