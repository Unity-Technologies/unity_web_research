struct TerrainGrass {
  x_WavingTint : vec4<f32>,
  x_WaveAndDistance : vec4<f32>,
  x_CameraPosition : vec4<f32>,
  x_CameraRight : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraUp : vec3<f32>,
}

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

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(8) var<uniform> x_23 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_176 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(7) var<uniform> x_256 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_28 : vec4<f32> = x_23.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_28.y, x_28.y, x_28.y, x_28.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_35 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = in_POSITION0;
  u_xlat0 = (x_35 * vec4<f32>(x_38.z, x_38.z, x_38.z, x_38.z));
  let x_43 : vec4<f32> = x_23.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_43.y, x_43.y, x_43.y, x_43.y) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f));
  let x_50 : vec4<f32> = in_POSITION0;
  let x_52 : vec4<f32> = u_xlat1;
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_50.x, x_50.x, x_50.x, x_50.x) * x_52) + x_54);
  let x_57 : vec4<f32> = x_23.x_WaveAndDistance;
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_57.x, x_57.x, x_57.x, x_57.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_65);
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_67);
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_69 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_76 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_76 * x_77);
  let x_80 : vec4<f32> = u_xlat0;
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_80 * x_81);
  let x_83 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_83 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_87);
  let x_89 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_89 * x_90);
  let x_92 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_92 * x_93);
  let x_95 : vec4<f32> = u_xlat2;
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_95 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_99);
  let x_101 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_101 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_105);
  let x_107 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_107 * x_108);
  let x_110 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_110 * x_111);
  let x_118 : f32 = in_COLOR0.w;
  let x_122 : f32 = x_23.x_WaveAndDistance.z;
  u_xlat1.x = (x_118 * x_122);
  let x_127 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_127 * vec4<f32>(x_128.x, x_128.x, x_128.x, x_128.x));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_131, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_139 : f32 = u_xlat0.x;
  u_xlat0.x = (x_139 * 0.699999988f);
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_143, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_150, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_156 : vec4<f32> = u_xlat2;
  let x_160 : vec4<f32> = x_23.x_WaveAndDistance;
  let x_163 : vec4<f32> = in_POSITION0;
  let x_165 : vec2<f32> = ((-(vec2<f32>(x_156.x, x_156.z)) * vec2<f32>(x_160.z, x_160.z)) + vec2<f32>(x_163.x, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_166.y, x_165.y, x_166.w);
  let x_170 : vec4<f32> = in_POSITION0;
  let x_179 : vec4<f32> = x_176.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_170.y, x_170.y, x_170.y) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_183 : vec4<f32> = x_176.unity_ObjectToWorld[0i];
  let x_185 : vec4<f32> = u_xlat1;
  let x_188 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.x, x_185.x, x_185.x)) + x_188);
  let x_192 : vec4<f32> = x_176.unity_ObjectToWorld[2i];
  let x_194 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_194.z, x_194.z, x_194.z)) + x_197);
  let x_199 : vec3<f32> = u_xlat3;
  let x_202 : vec4<f32> = x_176.unity_ObjectToWorld[3i];
  u_xlat3 = (x_199 + vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_207 : vec3<f32> = u_xlat3;
  let x_208 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_215 : vec3<f32> = in_NORMAL0;
  let x_217 : vec4<f32> = x_176.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_215, vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec3<f32> = in_NORMAL0;
  let x_223 : vec4<f32> = x_176.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_221, vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_228 : vec3<f32> = in_NORMAL0;
  let x_230 : vec4<f32> = x_176.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_228, vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_235 : vec4<f32> = u_xlat2;
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : f32 = u_xlat10;
  u_xlat10 = max(x_240, 1.17549435e-37f);
  let x_243 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_243);
  let x_247 : f32 = u_xlat10;
  let x_249 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec3<f32> = u_xlat3;
  let x_259 : vec3<f32> = x_256.x_WorldSpaceCameraPos;
  let x_260 : vec3<f32> = (-(x_252) + x_259);
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat2;
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : f32 = u_xlat10;
  u_xlat10 = max(x_268, 1.17549435e-37f);
  let x_270 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_270);
  let x_273 : f32 = u_xlat10;
  let x_275 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_273, x_273, x_273) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_282 : f32 = in_POSITION0.y;
  u_xlat1.y = x_282;
  let x_284 : vec4<f32> = u_xlat1;
  let x_287 : vec4<f32> = x_23.x_CameraPosition;
  let x_290 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) + -(vec3<f32>(x_287.x, x_287.y, x_287.z)));
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat1;
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_300 : f32 = u_xlat1.x;
  let x_303 : f32 = x_23.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_300) + x_303);
  let x_307 : f32 = u_xlat1.x;
  let x_309 : f32 = u_xlat1.x;
  u_xlat1.x = (x_307 + x_309);
  let x_314 : f32 = u_xlat1.x;
  let x_316 : f32 = x_23.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_314 * x_316);
  let x_320 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_320, 0.0f, 1.0f);
  let x_325 : vec4<f32> = x_23.x_WavingTint;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat0;
  let x_334 : vec4<f32> = u_xlat1;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.x, x_332.x) * vec3<f32>(x_334.x, x_334.y, x_334.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec4<f32> = in_COLOR0;
  let x_346 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec3<f32> = u_xlat3;
  let x_359 : vec4<f32> = x_256.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_356.y, x_356.y, x_356.y, x_356.y) * x_359);
  let x_362 : vec4<f32> = x_256.unity_MatrixVP[0i];
  let x_363 : vec3<f32> = u_xlat3;
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_362 * vec4<f32>(x_363.x, x_363.x, x_363.x, x_363.x)) + x_366);
  let x_369 : vec4<f32> = x_256.unity_MatrixVP[2i];
  let x_370 : vec3<f32> = u_xlat3;
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_369 * vec4<f32>(x_370.z, x_370.z, x_370.z, x_370.z)) + x_373);
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = x_256.unity_MatrixVP[3i];
  gl_Position = (x_379 + x_381);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD7_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}

