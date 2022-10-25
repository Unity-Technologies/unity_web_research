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

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_264 : VGlobals;

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
  let x_12 : vec2<f32> = in_TEXCOORD1;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  vs_TEXCOORD1 = ((x_12 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_34 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_34;
  let x_43 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_43.y, x_43.y, x_43.y, x_43.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = in_POSITION0;
  u_xlat0 = (x_50 * vec4<f32>(x_53.z, x_53.z, x_53.z, x_53.z));
  let x_58 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f));
  let x_65 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x) * x_67) + x_69);
  let x_72 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_80);
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_82);
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_84 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_91 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_91 * x_92);
  let x_95 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_95 * x_96);
  let x_98 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_98 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_102);
  let x_104 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_104 * x_105);
  let x_107 : vec4<f32> = u_xlat1;
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_107 * x_108);
  let x_110 : vec4<f32> = u_xlat2;
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_110 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_114);
  let x_116 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_116 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_120);
  let x_122 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_122 * x_123);
  let x_125 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_125 * x_126);
  let x_132 : f32 = in_COLOR0.w;
  let x_135 : f32 = x_40.x_WaveAndDistance.z;
  u_xlat1.x = (x_132 * x_135);
  let x_140 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_140 * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x));
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_144, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = (x_152 * 0.699999988f);
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_156, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_163, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_169 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_176 : vec4<f32> = in_POSITION0;
  let x_178 : vec2<f32> = ((-(vec2<f32>(x_169.x, x_169.z)) * vec2<f32>(x_173.z, x_173.z)) + vec2<f32>(x_176.x, x_176.z));
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_178.x, x_179.y, x_178.y, x_179.w);
  let x_183 : vec4<f32> = in_POSITION0;
  let x_187 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_183.y, x_183.y, x_183.y) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_193 : vec4<f32> = u_xlat1;
  let x_196 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193.x, x_193.x, x_193.x)) + x_196);
  let x_200 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_202 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.z, x_202.z, x_202.z)) + x_205);
  let x_207 : vec3<f32> = u_xlat3;
  let x_210 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat3 = (x_207 + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec3<f32> = u_xlat3;
  let x_216 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_223 : vec3<f32> = in_NORMAL0;
  let x_225 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_223, vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_229 : vec3<f32> = in_NORMAL0;
  let x_231 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_229, vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_236 : vec3<f32> = in_NORMAL0;
  let x_238 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_236, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : f32 = u_xlat10;
  u_xlat10 = max(x_248, 1.17549435e-37f);
  let x_251 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_251);
  let x_255 : f32 = u_xlat10;
  let x_257 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_255, x_255, x_255) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec3<f32> = u_xlat3;
  let x_267 : vec3<f32> = x_264.x_WorldSpaceCameraPos;
  let x_268 : vec3<f32> = (-(x_260) + x_267);
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_271.x, x_271.y, x_271.z), vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : f32 = u_xlat10;
  u_xlat10 = max(x_276, 1.17549435e-37f);
  let x_278 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_278);
  let x_282 : f32 = u_xlat10;
  let x_284 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_282, x_282, x_282) * vec3<f32>(x_284.x, x_284.y, x_284.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_292 : f32 = in_POSITION0.y;
  u_xlat1.y = x_292;
  let x_294 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = x_40.x_CameraPosition;
  let x_300 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) + -(vec3<f32>(x_297.x, x_297.y, x_297.z)));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_303.x, x_303.y, x_303.z), vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_310 : f32 = u_xlat1.x;
  let x_313 : f32 = x_40.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_310) + x_313);
  let x_317 : f32 = u_xlat1.x;
  let x_319 : f32 = u_xlat1.x;
  u_xlat1.x = (x_317 + x_319);
  let x_324 : f32 = u_xlat1.x;
  let x_326 : f32 = x_40.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_324 * x_326);
  let x_330 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_330, 0.0f, 1.0f);
  let x_335 : vec4<f32> = x_40.x_WavingTint;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat1;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.x, x_342.x) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = in_COLOR0;
  let x_356 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec3<f32> = u_xlat3;
  let x_369 : vec4<f32> = x_264.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_366.y, x_366.y, x_366.y, x_366.y) * x_369);
  let x_372 : vec4<f32> = x_264.unity_MatrixVP[0i];
  let x_373 : vec3<f32> = u_xlat3;
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_372 * vec4<f32>(x_373.x, x_373.x, x_373.x, x_373.x)) + x_376);
  let x_379 : vec4<f32> = x_264.unity_MatrixVP[2i];
  let x_380 : vec3<f32> = u_xlat3;
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_379 * vec4<f32>(x_380.z, x_380.z, x_380.z, x_380.z)) + x_383);
  let x_389 : vec4<f32> = u_xlat0;
  let x_391 : vec4<f32> = x_264.unity_MatrixVP[3i];
  gl_Position = (x_389 + x_391);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(4) in_TEXCOORD1_param : vec2<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}

