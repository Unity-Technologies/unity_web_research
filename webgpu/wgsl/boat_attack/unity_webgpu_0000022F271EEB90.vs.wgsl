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
  x_TimeParameters : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

@group(1) @binding(3) var<uniform> x_16 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_44 : VGlobals;

var<private> in_POSITION0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

var<private> vs_INTERP1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_28 : vec2<f32> = (vec2<f32>(x_23.x, x_23.z) * vec2<f32>(2.0f, 0.25f));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_29.z, x_29.w);
  let x_34 : f32 = u_xlat0.y;
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = (x_34 + x_37);
  let x_41 : f32 = u_xlat0.x;
  let x_47 : f32 = x_44.x_TimeParameters.x;
  u_xlat0.x = (x_41 + x_47);
  let x_51 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_51);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_55 + 1.0f);
  let x_59 : vec4<f32> = u_xlat0;
  let x_64 : vec2<f32> = (vec2<f32>(x_59.x, x_59.x) * vec2<f32>(-0.050000001f, -0.174999997f));
  let x_65 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_64.x, x_64.y, x_65.z, x_65.w);
  let x_73 : f32 = in_POSITION0.y;
  u_xlat8 = ((x_73 * 0.050000001f) + 1.0f);
  let x_77 : f32 = u_xlat8;
  let x_78 : f32 = u_xlat8;
  u_xlat8 = (x_77 * x_78);
  let x_80 : f32 = u_xlat8;
  let x_81 : f32 = u_xlat8;
  let x_83 : f32 = u_xlat8;
  u_xlat8 = ((x_80 * x_81) + -(x_83));
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : f32 = u_xlat8;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(x_88, x_88));
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_91.y, x_90.y, x_91.w);
  let x_94 : vec3<f32> = in_POSITION0;
  let x_98 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_100 : vec3<f32> = (vec3<f32>(x_94.y, x_94.y, x_94.y) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_104 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_106 : vec3<f32> = in_POSITION0;
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_106.x, x_106.x, x_106.x)) + vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_116 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_118 : vec3<f32> = in_POSITION0;
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec3<f32> = ((vec3<f32>(x_116.x, x_116.y, x_116.z) * vec3<f32>(x_118.z, x_118.z, x_118.z)) + vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : vec4<f32> = u_xlat1;
  let x_129 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_131 : vec3<f32> = (vec3<f32>(x_126.x, x_126.y, x_126.z) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  u_xlat0.y = 0.0f;
  let x_136 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = (vec3<f32>(x_136.x, x_136.y, x_136.z) + vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = x_16.unity_WorldToObject[1i];
  let x_148 : vec3<f32> = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec4<f32> = x_16.unity_WorldToObject[0i];
  let x_154 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_159.z);
  let x_163 : vec4<f32> = x_16.unity_WorldToObject[2i];
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + vec3<f32>(x_168.x, x_168.y, x_168.w));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = x_16.unity_WorldToObject[3i];
  let x_178 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat12;
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec3<f32> = in_POSITION0;
  let x_197 : vec3<f32> = in_POSITION0;
  u_xlat12 = dot(x_196, x_197);
  let x_199 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_199);
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : f32 = u_xlat12;
  let x_205 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203, x_203, x_203));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_209 : f32 = x_16.unity_ObjectToWorld[0i].y;
  u_xlat1.x = x_209;
  let x_212 : f32 = x_16.unity_ObjectToWorld[1i].y;
  u_xlat1.y = x_212;
  let x_215 : f32 = x_16.unity_ObjectToWorld[2i].y;
  u_xlat1.z = x_215;
  let x_218 : f32 = x_16.unity_ObjectToWorld[3i].y;
  u_xlat1.w = x_218;
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(x_221, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_227 : f32 = in_COLOR0.y;
  let x_230 : f32 = u_xlat12;
  u_xlat12 = ((x_227 * 4.5f) + x_230);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : f32 = u_xlat12;
  u_xlat5.y = dot(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(x_236, x_236, x_236));
  let x_240 : vec4<f32> = in_COLOR0;
  let x_245 : vec2<f32> = (vec2<f32>(x_240.x, x_240.y) * vec2<f32>(0.100000001f, 3.299999952f));
  let x_246 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_245.x, x_246.y, x_245.y);
  let x_249 : vec3<f32> = u_xlat5;
  let x_252 : vec4<f32> = x_44.x_TimeParameters;
  u_xlat2 = (vec4<f32>(x_249.y, x_249.y, x_249.z, x_249.z) + vec4<f32>(x_252.x, x_252.x, x_252.x, x_252.x));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_255 * vec4<f32>(3.950000048f, 1.386000037f, 0.75f, 0.386000007f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_265 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_271 : vec4<f32> = u_xlat2;
  u_xlat2 = fract(x_271);
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_273 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_278 : vec4<f32> = u_xlat2;
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat3 = (abs(x_278) * abs(x_280));
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat2 = ((-(abs(x_283)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_290 : vec4<f32> = u_xlat3;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_290 * x_291) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_296 : vec4<f32> = u_xlat2;
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec3<f32> = (vec3<f32>(x_296.y, x_296.w, x_296.y) + vec3<f32>(x_298.x, x_298.z, x_298.x));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_301.y, x_300.y, x_300.z);
  let x_304 : vec3<f32> = in_NORMAL0;
  let x_306 : vec4<f32> = x_16.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_304, vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_310 : vec3<f32> = in_NORMAL0;
  let x_312 : vec4<f32> = x_16.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_310, vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_316 : vec3<f32> = in_NORMAL0;
  let x_318 : vec4<f32> = x_16.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_316, vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_322 : vec4<f32> = u_xlat2;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_322.x, x_322.y, x_322.z), vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : f32 = u_xlat12;
  u_xlat12 = max(x_327, 1.17549435e-37f);
  let x_330 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_330);
  let x_332 : f32 = u_xlat12;
  let x_334 : vec4<f32> = u_xlat2;
  let x_336 : vec2<f32> = (vec2<f32>(x_332, x_332) * vec2<f32>(x_334.x, x_334.z));
  let x_337 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_336.x, x_336.y, x_337.z, x_337.w);
  let x_339 : vec3<f32> = u_xlat5;
  let x_341 : vec4<f32> = u_xlat2;
  let x_343 : vec2<f32> = (vec2<f32>(x_339.x, x_339.x) * vec2<f32>(x_341.x, x_341.y));
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_343.x, x_344.y, x_343.y, x_344.w);
  let x_347 : f32 = in_COLOR0.z;
  u_xlat2.y = ((x_347 * -0.349999994f) + 0.349999994f);
  let x_353 : vec4<f32> = u_xlat1;
  let x_355 : vec4<f32> = u_xlat2;
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.z, x_353.w) * vec3<f32>(x_355.x, x_355.y, x_355.z)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_368 : vec3<f32> = (vec3<f32>(x_363.y, x_363.y, x_363.y) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_372 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_374 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec3<f32> = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374.x, x_374.x, x_374.x)) + vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_379.z);
  let x_383 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_385 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(x_385.z, x_385.z, x_385.z)) + vec3<f32>(x_388.x, x_388.y, x_388.w));
  let x_391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_398 : vec3<f32> = (vec3<f32>(x_393.x, x_393.y, x_393.z) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = x_44.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_401.y, x_401.y, x_401.y, x_401.y) * x_404);
  let x_407 : vec4<f32> = x_44.unity_MatrixVP[0i];
  let x_408 : vec4<f32> = u_xlat0;
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_407 * vec4<f32>(x_408.x, x_408.x, x_408.x, x_408.x)) + x_411);
  let x_414 : vec4<f32> = x_44.unity_MatrixVP[2i];
  let x_415 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_414 * vec4<f32>(x_415.z, x_415.z, x_415.z, x_415.z)) + x_418);
  let x_422 : vec4<f32> = u_xlat0;
  vs_INTERP0 = vec3<f32>(x_422.x, x_422.y, x_422.z);
  let x_428 : vec4<f32> = u_xlat1;
  let x_430 : vec4<f32> = x_44.unity_MatrixVP[3i];
  gl_Position = (x_428 + x_430);
  let x_436 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP1 = x_436;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP1_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP1);
}

