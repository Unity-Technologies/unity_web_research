diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  unity_MatrixInvV : mat4x4<f32>,
  /* @offset(272) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(336) */
  x_WavingTint : vec4<f32>,
  /* @offset(352) */
  x_WaveAndDistance : vec4<f32>,
  /* @offset(368) */
  x_CameraPosition : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_25 : vec2<f32> = (vec2<f32>(x_13.x, x_13.z) * vec2<f32>(x_23.y, x_23.y));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_26.z, x_26.w);
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_29.y, x_29.y, x_29.y, x_29.y) * vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, 0.01999999955296516418f, 0.05000000074505805969f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_36.x, x_36.x, x_36.x, x_36.x) * vec4<f32>(0.01200000010430812836f, 0.01999999955296516418f, 0.05999999865889549255f, 0.02400000020861625671f)) + x_43);
  let x_46 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_46.x, x_46.x, x_46.x, x_46.x) * vec4<f32>(1.20000004768371582031f, 2.0f, 1.60000002384185791016f, 4.80000019073486328125f)) + x_54);
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_56);
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_58 * vec4<f32>(6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f, 6.40884876251220703125f)) + vec4<f32>(-3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f, -3.14159274101257324219f));
  let x_65 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_65 * x_66);
  let x_69 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_69 * x_70);
  let x_72 : vec4<f32> = u_xlat2;
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_72 * vec4<f32>(-0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f, -0.16161616146564483643f)) + x_76);
  let x_78 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_78 * x_79);
  let x_81 : vec4<f32> = u_xlat1;
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_81 * x_82);
  let x_84 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_84 * vec4<f32>(0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f, 0.00833330024033784866f)) + x_88);
  let x_90 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_90 * vec4<f32>(-0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f, -0.00019840999448206276f)) + x_94);
  let x_96 : vec4<f32> = u_xlat0;
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_96 * x_97);
  let x_99 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_99 * x_100);
  let x_107 : f32 = in_COLOR0.w;
  let x_111 : f32 = x_18.x_WaveAndDistance.z;
  u_xlat1.x = (x_107 * x_111);
  let x_116 : vec4<f32> = u_xlat0;
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_116 * vec4<f32>(x_117.x, x_117.x, x_117.x, x_117.x));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_120, vec4<f32>(0.67419987916946411133f, 0.67419987916946411133f, 0.26967993378639221191f, 0.13483996689319610596f));
  let x_128 : f32 = u_xlat0.x;
  u_xlat0.x = (x_128 * 0.69999998807907104492f);
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_132, vec4<f32>(0.02400000020861625671f, 0.03999999910593032837f, -0.11999999731779098511f, 0.09600000083446502686f));
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_139, vec4<f32>(0.00600000005215406418f, 0.01999999955296516418f, -0.01999999955296516418f, 0.10000000149011611938f));
  let x_145 : vec4<f32> = u_xlat2;
  let x_149 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_152 : vec4<f32> = in_POSITION0;
  let x_154 : vec2<f32> = ((-(vec2<f32>(x_145.x, x_145.z)) * vec2<f32>(x_149.z, x_149.z)) + vec2<f32>(x_152.x, x_152.z));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_155.y, x_154.y, x_155.w);
  let x_157 : vec4<f32> = in_POSITION0;
  let x_161 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat2 = (vec4<f32>(x_157.y, x_157.y, x_157.y, x_157.y) * x_161);
  let x_165 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_166 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_165 * vec4<f32>(x_166.x, x_166.x, x_166.x, x_166.x)) + x_169);
  let x_173 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_174 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_173 * vec4<f32>(x_174.z, x_174.z, x_174.z, x_174.z)) + x_177);
  let x_179 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat2 = (x_179 + x_182);
  let x_185 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_185.y, x_185.y, x_185.y, x_185.y) * x_189);
  let x_192 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_193 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_192 * vec4<f32>(x_193.x, x_193.x, x_193.x, x_193.x)) + x_196);
  let x_199 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_200 : vec4<f32> = u_xlat2;
  let x_203 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_199 * vec4<f32>(x_200.z, x_200.z, x_200.z, x_200.z)) + x_203);
  let x_211 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_212 : vec4<f32> = u_xlat2;
  let x_215 : vec4<f32> = u_xlat3;
  gl_Position = ((x_211 * vec4<f32>(x_212.w, x_212.w, x_212.w, x_212.w)) + x_215);
  let x_220 : f32 = in_POSITION0.y;
  u_xlat1.y = x_220;
  let x_225 : vec4<f32> = u_xlat1;
  let x_229 : vec4<f32> = x_18.x_CameraPosition;
  u_xlat4 = (vec3<f32>(x_225.x, x_225.y, x_225.z) + -(vec3<f32>(x_229.x, x_229.y, x_229.z)));
  let x_233 : vec3<f32> = u_xlat4;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat4.x = dot(x_233, x_234);
  let x_238 : f32 = u_xlat4.x;
  let x_241 : f32 = x_18.x_WaveAndDistance.w;
  u_xlat4.x = (-(x_238) + x_241);
  let x_246 : vec4<f32> = x_18.x_CameraPosition;
  let x_248 : vec3<f32> = u_xlat4;
  vs_COLOR0.w = dot(vec2<f32>(x_246.w, x_246.w), vec2<f32>(x_248.x, x_248.x));
  let x_254 : f32 = vs_COLOR0.w;
  vs_COLOR0.w = clamp(x_254, 0.0f, 1.0f);
  let x_261 : vec4<f32> = x_18.x_WavingTint;
  u_xlat4 = (vec3<f32>(x_261.x, x_261.y, x_261.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec3<f32> = u_xlat4;
  let x_272 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.x, x_266.x) * x_268) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_273 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = in_COLOR0;
  let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat0;
  let x_284 : vec4<f32> = u_xlat0;
  let x_286 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_292 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_292.x, x_292.y);
  let x_295 : f32 = u_xlat2.y;
  let x_297 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat0.x = (x_295 * x_297);
  let x_301 : f32 = x_18.unity_MatrixV[0i].z;
  let x_303 : f32 = u_xlat2.x;
  let x_306 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_301 * x_303) + x_306);
  let x_310 : f32 = x_18.unity_MatrixV[2i].z;
  let x_312 : f32 = u_xlat2.z;
  let x_315 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_310 * x_312) + x_315);
  let x_319 : f32 = x_18.unity_MatrixV[3i].z;
  let x_321 : f32 = u_xlat2.w;
  let x_324 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_319 * x_321) + x_324);
  let x_328 : f32 = u_xlat0.x;
  let x_330 : f32 = x_18.x_ProjectionParams.w;
  u_xlat0.x = (x_328 * x_330);
  let x_335 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = -(x_335);
  let x_339 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_343 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_345 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_343.y, x_343.y, x_343.y));
  let x_346 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_349 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_352 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_355 : vec4<f32> = u_xlat0;
  let x_357 : vec3<f32> = ((vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_352.x, x_352.x, x_352.x)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_364 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_367 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_364.z, x_364.z, x_364.z)) + vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_376 : vec4<f32> = x_18.unity_MatrixInvV[0i];
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_376.w, x_376.w, x_376.w)) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = in_NORMAL0;
  u_xlat0.x = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), x_388);
  let x_392 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_395 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_397 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_395.y, x_395.y, x_395.y));
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_401 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_404 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_404.x, x_404.x, x_404.x)) + vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_413 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_416 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_419 : vec4<f32> = u_xlat1;
  let x_421 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_416.z, x_416.z, x_416.z)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_425 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_428 : vec4<f32> = x_18.unity_MatrixInvV[1i];
  let x_431 : vec4<f32> = u_xlat1;
  let x_433 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_428.w, x_428.w, x_428.w)) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat1;
  let x_438 : vec3<f32> = in_NORMAL0;
  u_xlat0.y = dot(vec3<f32>(x_436.x, x_436.y, x_436.z), x_438);
  let x_442 : vec4<f32> = x_18.unity_WorldToObject[1i];
  let x_445 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_447 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_445.y, x_445.y, x_445.y));
  let x_448 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_451 : vec4<f32> = x_18.unity_WorldToObject[0i];
  let x_454 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_454.x, x_454.x, x_454.x)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_463 : vec4<f32> = x_18.unity_WorldToObject[2i];
  let x_466 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_466.z, x_466.z, x_466.z)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : vec4<f32> = x_18.unity_WorldToObject[3i];
  let x_478 : vec4<f32> = x_18.unity_MatrixInvV[2i];
  let x_481 : vec4<f32> = u_xlat1;
  let x_483 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(x_478.w, x_478.w, x_478.w)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = in_NORMAL0;
  u_xlat0.z = dot(vec3<f32>(x_486.x, x_486.y, x_486.z), x_488);
  let x_492 : vec4<f32> = u_xlat0;
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_492.x, x_492.y, x_492.z), vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_497);
  let x_499 : f32 = u_xlat12;
  let x_501 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = (vec3<f32>(x_499, x_499, x_499) * vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD1);
}


