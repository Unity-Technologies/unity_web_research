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
  unity_MatrixVP : mat4x4<f32>,
  x_ShadowBias : vec4<f32>,
  x_LightDirection : vec3<f32>,
}

@group(1) @binding(2) var<uniform> x_16 : UnityPerDraw;

var<private> in_POSITION0 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_394 : VGlobals;

var<private> vs_INTERP0 : vec3<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat3 : vec3<f32>;
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
  u_xlat0.x = sin(x_41);
  let x_45 : f32 = u_xlat0.x;
  u_xlat0.x = (x_45 + 1.0f);
  let x_49 : vec4<f32> = u_xlat0;
  let x_54 : vec2<f32> = (vec2<f32>(x_49.x, x_49.x) * vec2<f32>(-0.050000001f, -0.174999997f));
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_54.x, x_54.y, x_55.z, x_55.w);
  let x_63 : f32 = in_POSITION0.y;
  u_xlat8 = ((x_63 * 0.050000001f) + 1.0f);
  let x_67 : f32 = u_xlat8;
  let x_68 : f32 = u_xlat8;
  u_xlat8 = (x_67 * x_68);
  let x_70 : f32 = u_xlat8;
  let x_71 : f32 = u_xlat8;
  let x_73 : f32 = u_xlat8;
  u_xlat8 = ((x_70 * x_71) + -(x_73));
  let x_76 : vec4<f32> = u_xlat0;
  let x_78 : f32 = u_xlat8;
  let x_80 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) * vec2<f32>(x_78, x_78));
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_80.x, x_81.y, x_80.y, x_81.w);
  let x_84 : vec3<f32> = in_POSITION0;
  let x_88 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_90 : vec3<f32> = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_94 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_96 : vec3<f32> = in_POSITION0;
  let x_99 : vec4<f32> = u_xlat1;
  let x_101 : vec3<f32> = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_106 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_108 : vec3<f32> = in_POSITION0;
  let x_111 : vec4<f32> = u_xlat1;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.z, x_108.z, x_108.z)) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_121 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  u_xlat0.y = 0.0f;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  let x_130 : vec3<f32> = (vec3<f32>(x_126.x, x_126.y, x_126.z) + vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_136 : vec4<f32> = x_16.unity_WorldToObject[1i];
  let x_138 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec4<f32> = x_16.unity_WorldToObject[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_150.z, x_149.z);
  let x_153 : vec4<f32> = x_16.unity_WorldToObject[2i];
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.w));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat0;
  let x_166 : vec4<f32> = x_16.unity_WorldToObject[3i];
  let x_168 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_177);
  let x_179 : f32 = u_xlat12;
  let x_181 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = (vec3<f32>(x_179, x_179, x_179) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec3<f32> = in_POSITION0;
  let x_187 : vec3<f32> = in_POSITION0;
  u_xlat12 = dot(x_186, x_187);
  let x_189 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_189);
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : f32 = u_xlat12;
  let x_195 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193, x_193, x_193));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_200 : f32 = x_16.unity_ObjectToWorld[0i].y;
  u_xlat1.x = x_200;
  let x_203 : f32 = x_16.unity_ObjectToWorld[1i].y;
  u_xlat1.y = x_203;
  let x_206 : f32 = x_16.unity_ObjectToWorld[2i].y;
  u_xlat1.z = x_206;
  let x_209 : f32 = x_16.unity_ObjectToWorld[3i].y;
  u_xlat1.w = x_209;
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(x_212, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_218 : f32 = in_COLOR0.y;
  let x_221 : f32 = u_xlat12;
  u_xlat12 = ((x_218 * 4.5f) + x_221);
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : f32 = u_xlat12;
  u_xlat1.x = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225, x_225, x_225));
  let x_230 : f32 = in_COLOR0.y;
  u_xlat1.y = x_230;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_232.x, x_232.x, x_232.y, x_232.y) * vec4<f32>(3.950000048f, 1.386000037f, 2.474999905f, 1.273800015f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_243 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = fract(x_249);
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_251 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat2 = (abs(x_256) * abs(x_258));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = ((-(abs(x_261)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_268 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_268 * x_269) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec4<f32> = u_xlat1;
  let x_278 : vec3<f32> = (vec3<f32>(x_274.y, x_274.w, x_274.y) + vec3<f32>(x_276.x, x_276.z, x_276.x));
  let x_279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : f32 = in_COLOR0.x;
  u_xlat12 = (x_282 * 0.100000001f);
  let x_286 : vec3<f32> = in_NORMAL0;
  let x_288 : vec4<f32> = x_16.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_286, vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_292 : vec3<f32> = in_NORMAL0;
  let x_294 : vec4<f32> = x_16.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_292, vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_298 : vec3<f32> = in_NORMAL0;
  let x_300 : vec4<f32> = x_16.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_298, vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_305 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_305.x, x_305.y, x_305.z), vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : f32 = u_xlat13;
  u_xlat13 = max(x_310, 1.17549435e-37f);
  let x_313 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_313);
  let x_317 : f32 = u_xlat13;
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec2<f32> = (vec2<f32>(x_317, x_317) * vec2<f32>(x_319.x, x_319.z));
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_321.x, x_321.y, x_322.z);
  let x_324 : f32 = u_xlat13;
  let x_326 : vec4<f32> = u_xlat2;
  let x_328 : vec3<f32> = (vec3<f32>(x_324, x_324, x_324) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : f32 = u_xlat12;
  let x_333 : vec3<f32> = u_xlat3;
  let x_335 : vec2<f32> = (vec2<f32>(x_331, x_331) * vec2<f32>(x_333.x, x_333.y));
  let x_336 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_335.x, x_336.y, x_335.y);
  let x_339 : f32 = in_COLOR0.z;
  u_xlat3.y = ((x_339 * -0.349999994f) + 0.349999994f);
  let x_345 : vec4<f32> = u_xlat1;
  let x_347 : vec3<f32> = u_xlat3;
  let x_349 : vec4<f32> = u_xlat0;
  let x_351 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * x_347) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat0;
  let x_357 : vec4<f32> = x_16.unity_ObjectToWorld[1i];
  let x_359 : vec3<f32> = (vec3<f32>(x_354.y, x_354.y, x_354.y) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : vec4<f32> = x_16.unity_ObjectToWorld[0i];
  let x_365 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = u_xlat1;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.x, x_365.x, x_365.x)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_370.z);
  let x_374 : vec4<f32> = x_16.unity_ObjectToWorld[2i];
  let x_376 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_376.z, x_376.z, x_376.z)) + vec3<f32>(x_379.x, x_379.y, x_379.w));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat0;
  let x_387 : vec4<f32> = x_16.unity_ObjectToWorld[3i];
  let x_389 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_397 : vec3<f32> = x_394.x_LightDirection;
  let x_399 : vec4<f32> = x_394.x_ShadowBias;
  let x_402 : vec4<f32> = u_xlat0;
  let x_404 : vec3<f32> = ((x_397 * vec3<f32>(x_399.x, x_399.x, x_399.x)) + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_409 : vec4<f32> = u_xlat0;
  vs_INTERP0 = vec3<f32>(x_409.x, x_409.y, x_409.z);
  let x_412 : vec3<f32> = x_394.x_LightDirection;
  let x_413 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(x_412, vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_418 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_418, 0.0f, 1.0f);
  let x_422 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_422) + 1.0f);
  let x_427 : f32 = u_xlat0.x;
  let x_429 : f32 = x_394.x_ShadowBias.y;
  u_xlat0.x = (x_427 * x_429);
  let x_432 : vec4<f32> = u_xlat2;
  let x_434 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434.x, x_434.x, x_434.x)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_443 : vec4<f32> = u_xlat2;
  vs_INTERP1 = vec3<f32>(x_443.x, x_443.y, x_443.z);
  let x_445 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = x_394.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_445.y, x_445.y, x_445.y, x_445.y) * x_448);
  let x_451 : vec4<f32> = x_394.unity_MatrixVP[0i];
  let x_452 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_451 * vec4<f32>(x_452.x, x_452.x, x_452.x, x_452.x)) + x_455);
  let x_458 : vec4<f32> = x_394.unity_MatrixVP[2i];
  let x_459 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_458 * vec4<f32>(x_459.z, x_459.z, x_459.z, x_459.z)) + x_462);
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = x_394.unity_MatrixVP[3i];
  u_xlat0 = (x_464 + x_466);
  let x_473 : f32 = u_xlat0.z;
  gl_Position.z = min(x_473, 1.0f);
  let x_477 : vec4<f32> = u_xlat0;
  let x_478 : vec3<f32> = vec3<f32>(x_477.x, x_477.y, x_477.w);
  let x_481 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_478.x, x_478.y, x_481.z, x_478.z);
  let x_485 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP2 = x_485;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP2_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_INTERP2);
}

