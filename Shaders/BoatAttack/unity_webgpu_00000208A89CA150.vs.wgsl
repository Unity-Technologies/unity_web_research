type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

struct TerrainGrass {
  x_WavingTint : vec4<f32>,
  x_WaveAndDistance : vec4<f32>,
  x_CameraPosition : vec4<f32>,
  x_CameraRight : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraUp : vec3<f32>,
}

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(6) var<uniform> x_40 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_351 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb2 : bool;
  var x_92 : vec2<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD1;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  vs_TEXCOORD1 = ((x_12 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_34 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_34;
  let x_43 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_43.y, x_43.y, x_43.y, x_43.y) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f));
  let x_53 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_53.y, x_53.y, x_53.y, x_53.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_62 : vec4<f32> = in_POSITION0;
  let x_66 : vec4<f32> = x_40.x_CameraPosition;
  let x_69 : vec3<f32> = (vec3<f32>(x_62.x, x_62.y, x_62.z) + -(vec3<f32>(x_66.x, x_66.y, x_66.z)));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_86 : f32 = x_40.x_WaveAndDistance.w;
  let x_88 : f32 = u_xlat2.x;
  u_xlatb2 = (x_86 < x_88);
  let x_90 : bool = u_xlatb2;
  if (x_90) {
    x_92 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_99 : vec4<f32> = in_TANGENT0;
    x_92 = vec2<f32>(x_99.x, x_99.y);
  }
  let x_101 : vec2<f32> = x_92;
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_102.w);
  let x_104 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = x_40.x_CameraRight;
  let x_111 : vec4<f32> = in_POSITION0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.x, x_104.x) * x_109) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_114.y, x_113.y, x_113.z);
  let x_120 : f32 = u_xlat2.y;
  let x_122 : f32 = u_xlat2.z;
  u_xlat3.y = (x_120 + x_122);
  let x_125 : vec4<f32> = u_xlat1;
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_125 * vec4<f32>(x_126.w, x_126.w, x_126.w, x_126.w));
  let x_129 : vec4<f32> = u_xlat2;
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_129.x, x_129.x, x_129.x, x_129.x) * x_131) + x_133);
  let x_136 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_136.x, x_136.x, x_136.x, x_136.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_144);
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_146);
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_148 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_155 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_155 * x_156);
  let x_159 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat4 = (x_159 * x_160);
  let x_162 : vec4<f32> = u_xlat4;
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_162 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_166);
  let x_168 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_168 * x_169);
  let x_171 : vec4<f32> = u_xlat1;
  let x_172 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_171 * x_172);
  let x_174 : vec4<f32> = u_xlat4;
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_174 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_178);
  let x_180 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_180 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_184);
  let x_186 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_186 * x_187);
  let x_189 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_189 * x_190);
  let x_192 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = in_TANGENT0;
  u_xlat1 = (x_192 * vec4<f32>(x_193.y, x_193.y, x_193.y, x_193.y));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_196, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_204 : f32 = u_xlat0.x;
  u_xlat0.x = (x_204 * 0.699999988f);
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_208, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_215, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_221 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec2<f32> = ((-(vec2<f32>(x_221.x, x_221.z)) * vec2<f32>(x_225.z, x_225.z)) + vec2<f32>(x_228.x, x_228.w));
  let x_231 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_230.x, x_231.y, x_230.y);
  let x_234 : vec3<f32> = u_xlat3;
  let x_238 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec3<f32> = u_xlat3;
  let x_243 : vec4<f32> = x_40.x_CameraPosition;
  let x_246 : vec3<f32> = (x_241 + -(vec3<f32>(x_243.x, x_243.y, x_243.z)));
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_256 : f32 = u_xlat1.x;
  let x_259 : f32 = x_40.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_256) + x_259);
  let x_263 : f32 = u_xlat1.x;
  let x_265 : f32 = u_xlat1.x;
  u_xlat1.x = (x_263 + x_265);
  let x_271 : f32 = u_xlat1.x;
  let x_273 : f32 = x_40.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_271 * x_273);
  let x_278 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_278, 0.0f, 1.0f);
  let x_283 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_285 : vec3<f32> = u_xlat3;
  let x_288 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + x_288);
  let x_291 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_293 : vec3<f32> = u_xlat3;
  let x_296 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.z, x_293.z, x_293.z)) + x_296);
  let x_298 : vec3<f32> = u_xlat5;
  let x_300 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat5 = (x_298 + vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_304 : vec3<f32> = u_xlat5;
  let x_305 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_311 : vec3<f32> = in_NORMAL0;
  let x_313 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_311, vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : vec3<f32> = in_NORMAL0;
  let x_319 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_317, vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_323 : vec3<f32> = in_NORMAL0;
  let x_325 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_323, vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat16;
  u_xlat16 = max(x_335, 1.17549435e-37f);
  let x_338 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_338);
  let x_342 : f32 = u_xlat16;
  let x_344 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_342, x_342, x_342) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec3<f32> = u_xlat5;
  let x_353 : vec3<f32> = x_351.x_WorldSpaceCameraPos;
  let x_354 : vec3<f32> = (-(x_347) + x_353);
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_357.x, x_357.y, x_357.z), vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : f32 = u_xlat16;
  u_xlat16 = max(x_362, 1.17549435e-37f);
  let x_364 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_364);
  let x_368 : f32 = u_xlat16;
  let x_370 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_377 : vec4<f32> = x_40.x_WavingTint;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = u_xlat1;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384.x, x_384.x, x_384.x) * vec3<f32>(x_386.x, x_386.y, x_386.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat1;
  let x_397 : vec4<f32> = in_COLOR0;
  let x_399 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec3<f32> = (vec3<f32>(x_402.x, x_402.y, x_402.z) + vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec3<f32> = u_xlat5;
  let x_412 : vec4<f32> = x_351.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_409.y, x_409.y, x_409.y, x_409.y) * x_412);
  let x_415 : vec4<f32> = x_351.unity_MatrixVP[0i];
  let x_416 : vec3<f32> = u_xlat5;
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_415 * vec4<f32>(x_416.x, x_416.x, x_416.x, x_416.x)) + x_419);
  let x_422 : vec4<f32> = x_351.unity_MatrixVP[2i];
  let x_423 : vec3<f32> = u_xlat5;
  let x_426 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_422 * vec4<f32>(x_423.z, x_423.z, x_423.z, x_423.z)) + x_426);
  let x_432 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = x_351.unity_MatrixVP[3i];
  gl_Position = (x_432 + x_434);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(5) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD7, vs_TEXCOORD2, vs_TEXCOORD3, gl_Position);
}

