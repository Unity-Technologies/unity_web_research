diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_ScreenSize : vec4<f32>,
  /* @offset(32) */
  x_DebugHDRMode : i32,
  /* @offset(48) */
  x_HDRDebugParams : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_SourceTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb21 : bool;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb23 : bool;

var<private> u_xlatb10 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlatb2 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlatb3 : vec2<bool>;

var<private> u_xlat15 : f32;

var<private> u_xlatb17 : vec2<bool>;

var<private> u_xlat17 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatb24 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlatb18 : vec2<bool>;

var<private> u_xlat18 : f32;

var<private> u_xlati23 : i32;

var<private> u_xlat25 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(1) var x_xyBuffer : texture_2d<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat21 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_123 : vec3<f32>;
  var x_378 : vec3<f32>;
  var x_388 : vec3<f32>;
  var x_835 : f32;
  var x_950 : f32;
  var x_1277 : vec3<f32>;
  var x_1363 : vec3<f32>;
  var x_1375 : vec3<f32>;
  var x_1484 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_28.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_SourceTexture, sampler_PointClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_43 : i32 = x_28.x_DebugHDRMode;
  u_xlatb21 = (x_43 != 3i);
  let x_46 : bool = u_xlatb21;
  if (x_46) {
    let x_50 : i32 = x_28.x_DebugHDRMode;
    u_xlatb21 = (x_50 == 2i);
    let x_55 : f32 = x_28.x_ScreenSize.x;
    u_xlat1.x = (x_55 * 0.3333333432674407959f);
    let x_62 : vec2<f32> = vs_TEXCOORD0;
    let x_65 : vec4<f32> = x_28.x_ScreenSize;
    u_xlat8 = (x_62 * vec2<f32>(x_65.x, x_65.y));
    let x_71 : f32 = x_28.x_HDRDebugParams.w;
    u_xlatb22 = (x_71 == 0.0f);
    let x_79 : vec3<f32> = u_xlat0;
    u_xlat2.x = dot(vec3<f32>(0.4123910069465637207f, 0.3575839996337890625f, 0.18048100173473358154f), x_79);
    let x_86 : vec3<f32> = u_xlat0;
    u_xlat2.y = dot(vec3<f32>(0.21263900399208068848f, 0.71516901254653930664f, 0.07219229638576507568f), x_86);
    let x_94 : vec3<f32> = u_xlat0;
    u_xlat2.z = dot(vec3<f32>(0.01933079957962036133f, 0.1191949993371963501f, 0.95053201913833618164f), x_94);
    let x_104 : vec3<f32> = u_xlat0;
    u_xlat3.x = dot(vec3<f32>(0.63857400417327880859f, 0.14461700618267059326f, 0.16726499795913696289f), x_104);
    let x_111 : vec3<f32> = u_xlat0;
    u_xlat3.y = dot(vec3<f32>(0.26336699724197387695f, 0.67799800634384155273f, 0.05863529816269874573f), x_111);
    let x_117 : vec3<f32> = u_xlat0;
    u_xlat3.z = dot(vec2<f32>(0.0280726999044418335f, 1.06098997592926025391f), vec2<f32>(x_117.y, x_117.z));
    let x_121 : bool = u_xlatb22;
    if (x_121) {
      let x_126 : vec3<f32> = u_xlat2;
      x_123 = x_126;
    } else {
      let x_128 : vec4<f32> = u_xlat3;
      x_123 = vec3<f32>(x_128.x, x_128.y, x_128.z);
    }
    let x_130 : vec3<f32> = x_123;
    u_xlat2 = x_130;
    let x_132 : vec3<f32> = u_xlat2;
    u_xlat16.x = dot(x_132, vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_137 : vec3<f32> = u_xlat2;
    let x_139 : vec2<f32> = u_xlat16;
    let x_141 : vec2<f32> = (vec2<f32>(x_137.x, x_137.y) / vec2<f32>(x_139.x, x_139.x));
    let x_142 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_141.x, x_141.y, x_142.z);
    let x_144 : vec3<f32> = u_xlat2;
    u_xlat16 = (vec2<f32>(x_144.x, x_144.y) + vec2<f32>(-0.63999998569488525391f, -0.33000001311302185059f));
    let x_150 : vec2<f32> = u_xlat16;
    u_xlat3.x = dot(x_150, vec2<f32>(-0.33999997377395629883f, 0.27000001072883605957f));
    let x_156 : vec2<f32> = u_xlat16;
    u_xlat16.x = dot(x_156, vec2<f32>(-0.48999997973442077637f, -0.27000001072883605957f));
    let x_164 : f32 = u_xlat3.x;
    u_xlat23 = (x_164 * 0.09369997680187225342f);
    let x_169 : f32 = u_xlat16.x;
    u_xlat10 = (x_169 * 0.09369997680187225342f);
    let x_172 : f32 = u_xlat3.x;
    let x_175 : f32 = u_xlat10;
    u_xlat3.x = ((x_172 * 0.31299999356269836426f) + -(x_175));
    let x_180 : f32 = u_xlat16.x;
    let x_183 : f32 = u_xlat23;
    u_xlat16.x = ((x_180 * 0.18849998712539672852f) + -(x_183));
    let x_188 : f32 = u_xlat3.x;
    u_xlat23 = ((-(x_188) * 19.9120635986328125f) + 1.0f);
    let x_194 : f32 = u_xlat16.x;
    let x_197 : f32 = u_xlat23;
    u_xlat16.x = ((-(x_194) * 19.9120635986328125f) + x_197);
    let x_202 : f32 = u_xlat16.x;
    u_xlatb23 = (x_202 >= 0.0f);
    let x_206 : f32 = u_xlat16.x;
    u_xlatb10 = (1.0f >= x_206);
    let x_208 : bool = u_xlatb23;
    let x_209 : bool = u_xlatb10;
    u_xlatb23 = (x_208 & x_209);
    let x_212 : f32 = u_xlat3.x;
    u_xlatb10 = (x_212 >= 0.0f);
    let x_214 : bool = u_xlatb23;
    let x_215 : bool = u_xlatb10;
    u_xlatb23 = (x_214 & x_215);
    let x_219 : f32 = u_xlat3.x;
    u_xlatb10 = (0.05022080987691879272f >= x_219);
    let x_221 : bool = u_xlatb23;
    let x_222 : bool = u_xlatb10;
    u_xlatb23 = (x_221 & x_222);
    let x_225 : f32 = u_xlat3.x;
    let x_228 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_225 * 19.9120635986328125f) + x_228);
    let x_233 : f32 = u_xlat16.x;
    u_xlatb16 = (1.0f >= x_233);
    let x_235 : bool = u_xlatb16;
    let x_236 : bool = u_xlatb23;
    u_xlatb16 = (x_235 & x_236);
    let x_238 : bool = u_xlatb16;
    if (x_238) {
      u_xlat3.x = 0.0f;
      u_xlat3.z = 0.0f;
      let x_244 : f32 = x_28.x_HDRDebugParams.z;
      u_xlat3.y = x_244;
      let x_246 : vec4<f32> = u_xlat3;
      let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(0.20000000298023223877f, 0.20000000298023223877f, 0.20000000298023223877f));
      let x_251 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
      let x_253 : vec3<f32> = u_xlat0;
      let x_257 : vec4<f32> = u_xlat3;
      let x_259 : vec3<f32> = ((x_253 * vec3<f32>(0.80000001192092895508f, 0.80000001192092895508f, 0.80000001192092895508f)) + vec3<f32>(x_257.x, x_257.y, x_257.z));
      let x_260 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    } else {
      let x_263 : vec3<f32> = u_xlat2;
      let x_268 : vec2<f32> = (vec2<f32>(x_263.x, x_263.y) + vec2<f32>(-0.70800000429153442383f, -0.29199999570846557617f));
      let x_269 : vec3<f32> = u_xlat2;
      u_xlat2 = vec3<f32>(x_268.x, x_268.y, x_269.z);
      let x_271 : vec3<f32> = u_xlat2;
      u_xlat2.z = dot(vec2<f32>(x_271.x, x_271.y), vec2<f32>(-0.53799998760223388672f, 0.50499999523162841797f));
      let x_278 : vec3<f32> = u_xlat2;
      u_xlat2.x = dot(vec2<f32>(x_278.x, x_278.y), vec2<f32>(-0.57700002193450927734f, -0.24599999189376831055f));
      let x_286 : vec3<f32> = u_xlat2;
      let x_290 : vec2<f32> = (vec2<f32>(x_286.z, x_286.x) * vec2<f32>(0.18619601428508758545f, 0.18619601428508758545f));
      let x_291 : vec3<f32> = u_xlat9;
      u_xlat9 = vec3<f32>(x_290.x, x_291.y, x_290.y);
      let x_294 : f32 = u_xlat2.z;
      let x_298 : f32 = u_xlat9.z;
      u_xlat16.x = ((x_294 * 0.39344501495361328125f) + -(x_298));
      let x_303 : f32 = u_xlat2.x;
      let x_307 : f32 = u_xlat9.x;
      u_xlat2.x = ((x_303 * 0.54446899890899658203f) + -(x_307));
      let x_312 : f32 = u_xlat16.x;
      u_xlat9.x = ((-(x_312) * 5.56948947906494140625f) + 1.0f);
      let x_319 : f32 = u_xlat2.x;
      let x_323 : f32 = u_xlat9.x;
      u_xlat2.x = ((-(x_319) * 5.56948947906494140625f) + x_323);
      let x_328 : f32 = u_xlat2.x;
      u_xlatb9 = (x_328 >= 0.0f);
      let x_331 : f32 = u_xlat2.x;
      u_xlatb23 = (1.0f >= x_331);
      let x_333 : bool = u_xlatb23;
      let x_334 : bool = u_xlatb9;
      u_xlatb9 = (x_333 & x_334);
      let x_337 : f32 = u_xlat16.x;
      u_xlatb23 = (x_337 >= 0.0f);
      let x_339 : bool = u_xlatb23;
      let x_340 : bool = u_xlatb9;
      u_xlatb9 = (x_339 & x_340);
      let x_344 : f32 = u_xlat16.x;
      u_xlatb23 = (0.17954966425895690918f >= x_344);
      let x_346 : bool = u_xlatb23;
      let x_347 : bool = u_xlatb9;
      u_xlatb9 = (x_346 & x_347);
      let x_350 : f32 = u_xlat16.x;
      let x_353 : f32 = u_xlat2.x;
      u_xlat2.x = ((x_350 * 5.56948947906494140625f) + x_353);
      let x_358 : f32 = u_xlat2.x;
      u_xlatb2 = (1.0f >= x_358);
      let x_360 : bool = u_xlatb2;
      let x_361 : bool = u_xlatb9;
      u_xlatb2 = (x_360 & x_361);
      let x_365 : f32 = x_28.x_HDRDebugParams.z;
      u_xlat4.x = x_365;
      u_xlat4.y = 0.20000000298023223877f;
      u_xlat4.z = 0.20000000298023223877f;
      let x_369 : vec4<f32> = u_xlat4;
      u_xlat9 = (vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(0.20000000298023223877f, 0.0f, 0.0f));
      let x_373 : vec3<f32> = u_xlat0;
      let x_375 : vec3<f32> = u_xlat9;
      u_xlat9 = ((x_373 * vec3<f32>(0.80000001192092895508f, 0.80000001192092895508f, 0.80000001192092895508f)) + x_375);
      let x_377 : bool = u_xlatb2;
      if (x_377) {
        let x_381 : vec3<f32> = u_xlat9;
        x_378 = x_381;
      } else {
        let x_383 : vec3<f32> = u_xlat0;
        x_378 = x_383;
      }
      let x_384 : vec3<f32> = x_378;
      let x_385 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
    }
    let x_387 : bool = u_xlatb21;
    if (x_387) {
      let x_391 : vec4<f32> = u_xlat3;
      x_388 = vec3<f32>(x_391.x, x_391.y, x_391.z);
    } else {
      let x_394 : vec3<f32> = u_xlat0;
      x_388 = x_394;
    }
    let x_395 : vec3<f32> = x_388;
    u_xlat2 = x_395;
    let x_397 : f32 = u_xlat1.x;
    u_xlat1.x = trunc(x_397);
    let x_403 : vec2<f32> = u_xlat8;
    let x_405 : vec3<f32> = u_xlat1;
    let x_408 : vec4<bool> = (vec4<f32>(x_403.x, x_403.y, x_403.x, x_403.x) < vec4<f32>(x_405.x, x_405.x, x_405.x, x_405.x));
    u_xlatb3 = vec2<bool>(x_408.x, x_408.y);
    let x_411 : bool = u_xlatb3.y;
    let x_413 : bool = u_xlatb3.x;
    u_xlatb23 = (x_411 & x_413);
    let x_415 : bool = u_xlatb23;
    if (x_415) {
      let x_418 : vec2<f32> = u_xlat8;
      let x_419 : vec3<f32> = u_xlat1;
      let x_421 : vec2<f32> = (x_418 / vec2<f32>(x_419.x, x_419.x));
      let x_422 : vec3<f32> = u_xlat1;
      u_xlat1 = vec3<f32>(x_421.x, x_421.y, x_422.z);
      let x_424 : vec3<f32> = u_xlat1;
      u_xlat3 = (-(vec4<f32>(x_424.x, x_424.y, x_424.x, x_424.y)) + vec4<f32>(0.30000001192092895508f, 0.60000002384185791016f, 0.15000000596046447754f, 0.05999999865889549255f));
      let x_434 : vec4<f32> = u_xlat3;
      let x_436 : vec4<f32> = u_xlat3;
      u_xlat15 = dot(vec2<f32>(x_434.x, x_434.y), vec2<f32>(x_436.x, x_436.y));
      let x_439 : f32 = u_xlat15;
      u_xlat15 = sqrt(x_439);
      let x_441 : vec4<f32> = u_xlat3;
      let x_443 : vec4<f32> = u_xlat3;
      u_xlat23 = dot(vec2<f32>(x_441.z, x_441.w), vec2<f32>(x_443.z, x_443.w));
      let x_446 : f32 = u_xlat23;
      u_xlat23 = sqrt(x_446);
      let x_448 : f32 = u_xlat15;
      let x_453 : vec4<bool> = (vec4<f32>(x_448, x_448, x_448, x_448) >= vec4<f32>(0.56044626235961914062f, 0.43416586518287658691f, 0.0f, 0.0f));
      u_xlatb3 = vec2<bool>(x_453.x, x_453.y);
      let x_456 : f32 = u_xlat23;
      let x_460 : vec4<bool> = (vec4<f32>(x_456, x_456, x_456, x_456) >= vec4<f32>(0.56044626235961914062f, 0.55946403741836547852f, 0.56044626235961914062f, 0.55946403741836547852f));
      u_xlatb17 = vec2<bool>(x_460.x, x_460.y);
      let x_463 : bool = u_xlatb17.x;
      let x_465 : bool = u_xlatb3.x;
      u_xlatb3.x = (x_463 | x_465);
      let x_469 : f32 = u_xlat15;
      let x_470 : f32 = u_xlat23;
      u_xlat17 = (x_469 + x_470);
      let x_472 : f32 = u_xlat17;
      u_xlat17 = (x_472 + 0.56044626235961914062f);
      let x_474 : f32 = u_xlat17;
      u_xlat4.x = (x_474 * 0.5f);
      let x_479 : f32 = u_xlat17;
      let x_481 : f32 = u_xlat15;
      u_xlat11 = ((x_479 * 0.5f) + -(x_481));
      let x_484 : f32 = u_xlat11;
      let x_486 : f32 = u_xlat4.x;
      u_xlat4.x = (x_484 * x_486);
      let x_489 : f32 = u_xlat17;
      let x_491 : f32 = u_xlat23;
      u_xlat11 = ((x_489 * 0.5f) + -(x_491));
      let x_494 : f32 = u_xlat11;
      let x_496 : f32 = u_xlat4.x;
      u_xlat4.x = (x_494 * x_496);
      let x_499 : f32 = u_xlat17;
      u_xlat17 = ((x_499 * 0.5f) + -0.56044626235961914062f);
      let x_503 : f32 = u_xlat17;
      let x_505 : f32 = u_xlat4.x;
      u_xlat17 = (x_503 * x_505);
      let x_507 : f32 = u_xlat17;
      u_xlat17 = sqrt(x_507);
      let x_509 : f32 = u_xlat17;
      u_xlat17 = ((x_509 * 3.56858468055725097656f) + -0.00100000004749745131f);
      let x_514 : f32 = u_xlat17;
      u_xlat17 = (x_514 * 500.000030517578125f);
      let x_517 : f32 = u_xlat17;
      u_xlat17 = clamp(x_517, 0.0f, 1.0f);
      let x_519 : f32 = u_xlat17;
      u_xlat4.x = ((x_519 * -2.0f) + 3.0f);
      let x_525 : f32 = u_xlat17;
      let x_526 : f32 = u_xlat17;
      u_xlat17 = (x_525 * x_526);
      let x_529 : f32 = u_xlat4.x;
      let x_531 : f32 = u_xlat17;
      u_xlat17 = ((-(x_529) * x_531) + 1.0f);
      let x_535 : bool = u_xlatb3.x;
      let x_536 : f32 = u_xlat17;
      u_xlat3.x = select(x_536, 0.0f, x_535);
      let x_539 : vec3<f32> = u_xlat1;
      u_xlat4 = (-(vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y)) + vec4<f32>(0.63999998569488525391f, 0.33000001311302185059f, 0.17000000178813934326f, 0.79699999094009399414f));
      let x_548 : vec4<f32> = u_xlat4;
      let x_550 : vec4<f32> = u_xlat4;
      u_xlat17 = dot(vec2<f32>(x_548.x, x_548.y), vec2<f32>(x_550.x, x_550.y));
      let x_553 : f32 = u_xlat17;
      u_xlat17 = sqrt(x_553);
      let x_556 : f32 = u_xlat17;
      let x_559 : vec4<bool> = (vec4<f32>(x_556, x_556, x_556, x_556) >= vec4<f32>(0.55946403741836547852f, 0.43416586518287658691f, 0.0f, 0.0f));
      u_xlatb4 = vec2<bool>(x_559.x, x_559.y);
      let x_563 : bool = u_xlatb17.y;
      let x_565 : bool = u_xlatb4.x;
      u_xlatb24 = (x_563 | x_565);
      let x_567 : f32 = u_xlat23;
      let x_568 : f32 = u_xlat17;
      u_xlat4.x = (x_567 + x_568);
      let x_572 : f32 = u_xlat4.x;
      u_xlat4.x = (x_572 + 0.55946403741836547852f);
      let x_577 : f32 = u_xlat4.x;
      u_xlat5.x = (x_577 * 0.5f);
      let x_581 : f32 = u_xlat4.x;
      let x_583 : f32 = u_xlat23;
      u_xlat23 = ((x_581 * 0.5f) + -(x_583));
      let x_586 : f32 = u_xlat23;
      let x_588 : f32 = u_xlat5.x;
      u_xlat23 = (x_586 * x_588);
      let x_591 : f32 = u_xlat4.x;
      let x_593 : f32 = u_xlat17;
      u_xlat5.x = ((x_591 * 0.5f) + -(x_593));
      let x_597 : f32 = u_xlat23;
      let x_599 : f32 = u_xlat5.x;
      u_xlat23 = (x_597 * x_599);
      let x_602 : f32 = u_xlat4.x;
      u_xlat4.x = ((x_602 * 0.5f) + -0.55946403741836547852f);
      let x_607 : f32 = u_xlat23;
      let x_609 : f32 = u_xlat4.x;
      u_xlat23 = (x_607 * x_609);
      let x_611 : f32 = u_xlat23;
      u_xlat23 = sqrt(x_611);
      let x_613 : f32 = u_xlat23;
      u_xlat23 = ((x_613 * 3.5748500823974609375f) + -0.00100000004749745131f);
      let x_617 : f32 = u_xlat23;
      u_xlat23 = (x_617 * 500.000030517578125f);
      let x_619 : f32 = u_xlat23;
      u_xlat23 = clamp(x_619, 0.0f, 1.0f);
      let x_621 : f32 = u_xlat23;
      u_xlat4.x = ((x_621 * -2.0f) + 3.0f);
      let x_625 : f32 = u_xlat23;
      let x_626 : f32 = u_xlat23;
      u_xlat23 = (x_625 * x_626);
      let x_629 : f32 = u_xlat4.x;
      let x_631 : f32 = u_xlat23;
      u_xlat23 = ((-(x_629) * x_631) + 1.0f);
      let x_634 : bool = u_xlatb24;
      let x_635 : f32 = u_xlat23;
      u_xlat23 = select(x_635, 0.0f, x_634);
      let x_637 : f32 = u_xlat23;
      let x_639 : f32 = u_xlat3.x;
      u_xlat23 = (x_637 + x_639);
      let x_642 : bool = u_xlatb3.y;
      let x_644 : bool = u_xlatb4.y;
      u_xlatb3.x = (x_642 | x_644);
      let x_647 : f32 = u_xlat15;
      let x_648 : f32 = u_xlat17;
      u_xlat10 = (x_647 + x_648);
      let x_650 : f32 = u_xlat10;
      u_xlat10 = (x_650 + 0.43416586518287658691f);
      let x_653 : f32 = u_xlat10;
      u_xlat24 = (x_653 * 0.5f);
      let x_655 : f32 = u_xlat10;
      let x_657 : f32 = u_xlat17;
      u_xlat17 = ((x_655 * 0.5f) + -(x_657));
      let x_660 : f32 = u_xlat17;
      let x_661 : f32 = u_xlat24;
      u_xlat17 = (x_660 * x_661);
      let x_663 : f32 = u_xlat10;
      let x_665 : f32 = u_xlat15;
      u_xlat15 = ((x_663 * 0.5f) + -(x_665));
      let x_668 : f32 = u_xlat15;
      let x_669 : f32 = u_xlat17;
      u_xlat15 = (x_668 * x_669);
      let x_671 : f32 = u_xlat10;
      u_xlat10 = ((x_671 * 0.5f) + -0.43416586518287658691f);
      let x_675 : f32 = u_xlat15;
      let x_676 : f32 = u_xlat10;
      u_xlat15 = (x_675 * x_676);
      let x_678 : f32 = u_xlat15;
      u_xlat15 = sqrt(x_678);
      let x_680 : f32 = u_xlat15;
      u_xlat15 = ((x_680 * 4.60653448104858398438f) + -0.00100000004749745131f);
      let x_684 : f32 = u_xlat15;
      u_xlat15 = (x_684 * 500.000030517578125f);
      let x_686 : f32 = u_xlat15;
      u_xlat15 = clamp(x_686, 0.0f, 1.0f);
      let x_688 : f32 = u_xlat15;
      u_xlat10 = ((x_688 * -2.0f) + 3.0f);
      let x_691 : f32 = u_xlat15;
      let x_692 : f32 = u_xlat15;
      u_xlat15 = (x_691 * x_692);
      let x_694 : f32 = u_xlat10;
      let x_696 : f32 = u_xlat15;
      u_xlat15 = ((-(x_694) * x_696) + 1.0f);
      let x_700 : bool = u_xlatb3.x;
      let x_701 : f32 = u_xlat15;
      u_xlat15 = select(x_701, 0.0f, x_700);
      let x_703 : f32 = u_xlat15;
      let x_704 : f32 = u_xlat23;
      u_xlat15 = (x_703 + x_704);
      let x_706 : vec4<f32> = u_xlat4;
      let x_708 : vec4<f32> = u_xlat4;
      u_xlat23 = dot(vec2<f32>(x_706.z, x_706.w), vec2<f32>(x_708.z, x_708.w));
      let x_711 : f32 = u_xlat23;
      u_xlat23 = sqrt(x_711);
      let x_713 : vec3<f32> = u_xlat1;
      u_xlat3 = (-(vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y)) + vec4<f32>(0.13099999725818634033f, 0.04600000008940696716f, 0.70800000429153442383f, 0.29199999570846557617f));
      let x_722 : vec4<f32> = u_xlat3;
      let x_724 : vec4<f32> = u_xlat3;
      u_xlat3.x = dot(vec2<f32>(x_722.x, x_722.y), vec2<f32>(x_724.x, x_724.y));
      let x_729 : f32 = u_xlat3.x;
      u_xlat3.x = sqrt(x_729);
      let x_732 : f32 = u_xlat23;
      let x_737 : vec4<bool> = (vec4<f32>(x_732, x_732, x_732, x_732) >= vec4<f32>(0.75201195478439331055f, 0.73788142204284667969f, 0.0f, 0.0f));
      u_xlatb4 = vec2<bool>(x_737.x, x_737.y);
      let x_740 : vec4<f32> = u_xlat3;
      let x_744 : vec4<bool> = (vec4<f32>(x_740.x, x_740.x, x_740.x, x_740.x) >= vec4<f32>(0.75201195478439331055f, 0.62725198268890380859f, 0.75201195478439331055f, 0.62725198268890380859f));
      u_xlatb18 = vec2<bool>(x_744.x, x_744.y);
      let x_747 : bool = u_xlatb18.x;
      let x_749 : bool = u_xlatb4.x;
      u_xlatb10 = (x_747 | x_749);
      let x_751 : f32 = u_xlat23;
      let x_753 : f32 = u_xlat3.x;
      u_xlat4.x = (x_751 + x_753);
      let x_757 : f32 = u_xlat4.x;
      u_xlat4.x = (x_757 + 0.75201195478439331055f);
      let x_762 : f32 = u_xlat4.x;
      u_xlat18 = (x_762 * 0.5f);
      let x_765 : f32 = u_xlat4.x;
      let x_767 : f32 = u_xlat23;
      u_xlat5.x = ((x_765 * 0.5f) + -(x_767));
      let x_771 : f32 = u_xlat18;
      let x_773 : f32 = u_xlat5.x;
      u_xlat18 = (x_771 * x_773);
      let x_776 : f32 = u_xlat4.x;
      let x_779 : f32 = u_xlat3.x;
      u_xlat5.x = ((x_776 * 0.5f) + -(x_779));
      let x_783 : f32 = u_xlat18;
      let x_785 : f32 = u_xlat5.x;
      u_xlat18 = (x_783 * x_785);
      let x_788 : f32 = u_xlat4.x;
      u_xlat4.x = ((x_788 * 0.5f) + -0.75201195478439331055f);
      let x_794 : f32 = u_xlat4.x;
      let x_795 : f32 = u_xlat18;
      u_xlat4.x = (x_794 * x_795);
      let x_799 : f32 = u_xlat4.x;
      u_xlat4.x = sqrt(x_799);
      let x_803 : f32 = u_xlat4.x;
      u_xlat4.x = ((x_803 * 2.65953207015991210938f) + -0.00100000004749745131f);
      let x_809 : f32 = u_xlat4.x;
      u_xlat4.x = (x_809 * 500.000030517578125f);
      let x_813 : f32 = u_xlat4.x;
      u_xlat4.x = clamp(x_813, 0.0f, 1.0f);
      let x_817 : f32 = u_xlat4.x;
      u_xlat18 = ((x_817 * -2.0f) + 3.0f);
      let x_821 : f32 = u_xlat4.x;
      let x_823 : f32 = u_xlat4.x;
      u_xlat4.x = (x_821 * x_823);
      let x_826 : f32 = u_xlat18;
      let x_829 : f32 = u_xlat4.x;
      u_xlat4.x = ((-(x_826) * x_829) + 1.0f);
      let x_833 : bool = u_xlatb10;
      if (x_833) {
        x_835 = 0.0f;
      } else {
        let x_840 : f32 = u_xlat4.x;
        x_835 = x_840;
      }
      let x_841 : f32 = x_835;
      u_xlat10 = x_841;
      let x_842 : f32 = u_xlat15;
      let x_843 : f32 = u_xlat10;
      u_xlat15 = (x_842 + x_843);
      let x_845 : vec4<f32> = u_xlat3;
      let x_847 : vec4<f32> = u_xlat3;
      u_xlat10 = dot(vec2<f32>(x_845.z, x_845.w), vec2<f32>(x_847.z, x_847.w));
      let x_850 : f32 = u_xlat10;
      u_xlat10 = sqrt(x_850);
      let x_852 : f32 = u_xlat10;
      let x_855 : vec4<bool> = (vec4<f32>(x_852, x_852, x_852, x_852) >= vec4<f32>(0.62725198268890380859f, 0.73788142204284667969f, 0.62725198268890380859f, 0.73788142204284667969f));
      u_xlatb17 = vec2<bool>(x_855.x, x_855.y);
      let x_858 : bool = u_xlatb17.x;
      let x_860 : bool = u_xlatb18.y;
      u_xlatb17.x = (x_858 | x_860);
      let x_863 : f32 = u_xlat10;
      let x_865 : f32 = u_xlat3.x;
      u_xlat4.x = (x_863 + x_865);
      let x_869 : f32 = u_xlat4.x;
      u_xlat4.x = (x_869 + 0.62725198268890380859f);
      let x_873 : f32 = u_xlat4.x;
      u_xlat18 = (x_873 * 0.5f);
      let x_876 : f32 = u_xlat4.x;
      let x_879 : f32 = u_xlat3.x;
      u_xlat3.x = ((x_876 * 0.5f) + -(x_879));
      let x_884 : f32 = u_xlat3.x;
      let x_885 : f32 = u_xlat18;
      u_xlat3.x = (x_884 * x_885);
      let x_889 : f32 = u_xlat4.x;
      let x_891 : f32 = u_xlat10;
      u_xlat18 = ((x_889 * 0.5f) + -(x_891));
      let x_895 : f32 = u_xlat3.x;
      let x_896 : f32 = u_xlat18;
      u_xlat3.x = (x_895 * x_896);
      let x_900 : f32 = u_xlat4.x;
      u_xlat4.x = ((x_900 * 0.5f) + -0.62725198268890380859f);
      let x_906 : f32 = u_xlat3.x;
      let x_908 : f32 = u_xlat4.x;
      u_xlat3.x = (x_906 * x_908);
      let x_912 : f32 = u_xlat3.x;
      u_xlat3.x = sqrt(x_912);
      let x_916 : f32 = u_xlat3.x;
      u_xlat3.x = ((x_916 * 3.18851113319396972656f) + -0.00100000004749745131f);
      let x_922 : f32 = u_xlat3.x;
      u_xlat3.x = (x_922 * 500.000030517578125f);
      let x_926 : f32 = u_xlat3.x;
      u_xlat3.x = clamp(x_926, 0.0f, 1.0f);
      let x_930 : f32 = u_xlat3.x;
      u_xlat4.x = ((x_930 * -2.0f) + 3.0f);
      let x_935 : f32 = u_xlat3.x;
      let x_937 : f32 = u_xlat3.x;
      u_xlat3.x = (x_935 * x_937);
      let x_941 : f32 = u_xlat4.x;
      let x_944 : f32 = u_xlat3.x;
      u_xlat3.x = ((-(x_941) * x_944) + 1.0f);
      let x_949 : bool = u_xlatb17.x;
      if (x_949) {
        x_950 = 0.0f;
      } else {
        let x_955 : f32 = u_xlat3.x;
        x_950 = x_955;
      }
      let x_956 : f32 = x_950;
      u_xlat3.x = x_956;
      let x_958 : f32 = u_xlat15;
      let x_960 : f32 = u_xlat3.x;
      u_xlat15 = (x_958 + x_960);
      let x_963 : bool = u_xlatb4.y;
      let x_965 : bool = u_xlatb17.y;
      u_xlatb3.x = (x_963 | x_965);
      let x_968 : f32 = u_xlat23;
      let x_969 : f32 = u_xlat10;
      u_xlat17 = (x_968 + x_969);
      let x_971 : f32 = u_xlat17;
      u_xlat17 = (x_971 + 0.73788142204284667969f);
      let x_973 : f32 = u_xlat17;
      u_xlat24 = (x_973 * 0.5f);
      let x_975 : f32 = u_xlat17;
      let x_977 : f32 = u_xlat10;
      u_xlat10 = ((x_975 * 0.5f) + -(x_977));
      let x_980 : f32 = u_xlat10;
      let x_981 : f32 = u_xlat24;
      u_xlat10 = (x_980 * x_981);
      let x_983 : f32 = u_xlat17;
      let x_985 : f32 = u_xlat23;
      u_xlat23 = ((x_983 * 0.5f) + -(x_985));
      let x_988 : f32 = u_xlat23;
      let x_989 : f32 = u_xlat10;
      u_xlat23 = (x_988 * x_989);
      let x_991 : f32 = u_xlat17;
      u_xlat10 = ((x_991 * 0.5f) + -0.73788142204284667969f);
      let x_995 : f32 = u_xlat23;
      let x_996 : f32 = u_xlat10;
      u_xlat23 = (x_995 * x_996);
      let x_998 : f32 = u_xlat23;
      u_xlat23 = sqrt(x_998);
      let x_1000 : f32 = u_xlat23;
      u_xlat23 = ((x_1000 * 2.7104625701904296875f) + -0.00100000004749745131f);
      let x_1004 : f32 = u_xlat23;
      u_xlat23 = (x_1004 * 500.000030517578125f);
      let x_1006 : f32 = u_xlat23;
      u_xlat23 = clamp(x_1006, 0.0f, 1.0f);
      let x_1008 : f32 = u_xlat23;
      u_xlat10 = ((x_1008 * -2.0f) + 3.0f);
      let x_1011 : f32 = u_xlat23;
      let x_1012 : f32 = u_xlat23;
      u_xlat23 = (x_1011 * x_1012);
      let x_1014 : f32 = u_xlat10;
      let x_1016 : f32 = u_xlat23;
      u_xlat23 = ((-(x_1014) * x_1016) + 1.0f);
      let x_1020 : bool = u_xlatb3.x;
      let x_1021 : f32 = u_xlat23;
      u_xlat23 = select(x_1021, 0.0f, x_1020);
      let x_1023 : f32 = u_xlat15;
      let x_1024 : f32 = u_xlat23;
      u_xlat15 = (x_1023 + x_1024);
      let x_1026 : vec3<f32> = u_xlat1;
      let x_1028 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) + vec2<f32>(-0.70800000429153442383f, -0.29199999570846557617f));
      let x_1029 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
      let x_1031 : vec4<f32> = u_xlat3;
      u_xlat23 = dot(vec2<f32>(x_1031.x, x_1031.y), vec2<f32>(-0.53799998760223388672f, 0.50499999523162841797f));
      let x_1034 : vec4<f32> = u_xlat3;
      u_xlat3.x = dot(vec2<f32>(x_1034.x, x_1034.y), vec2<f32>(-0.57700002193450927734f, -0.24599999189376831055f));
      let x_1038 : f32 = u_xlat23;
      u_xlat10 = (x_1038 * 0.18619601428508758545f);
      let x_1041 : f32 = u_xlat3.x;
      u_xlat17 = (x_1041 * 0.18619601428508758545f);
      let x_1043 : f32 = u_xlat23;
      let x_1045 : f32 = u_xlat17;
      u_xlat23 = ((x_1043 * 0.39344501495361328125f) + -(x_1045));
      let x_1049 : f32 = u_xlat3.x;
      let x_1051 : f32 = u_xlat10;
      u_xlat3.x = ((x_1049 * 0.54446899890899658203f) + -(x_1051));
      let x_1055 : f32 = u_xlat23;
      u_xlat10 = ((-(x_1055) * 5.56948947906494140625f) + 1.0f);
      let x_1060 : f32 = u_xlat3.x;
      let x_1063 : f32 = u_xlat10;
      u_xlat3.x = ((-(x_1060) * 5.56948947906494140625f) + x_1063);
      let x_1067 : f32 = u_xlat3.x;
      u_xlatb10 = (x_1067 >= 0.0f);
      let x_1070 : f32 = u_xlat3.x;
      u_xlatb17.x = (1.0f >= x_1070);
      let x_1074 : bool = u_xlatb17.x;
      let x_1075 : bool = u_xlatb10;
      u_xlatb10 = (x_1074 & x_1075);
      let x_1077 : f32 = u_xlat23;
      u_xlatb17.x = (x_1077 >= 0.0f);
      let x_1081 : bool = u_xlatb17.x;
      let x_1082 : bool = u_xlatb10;
      u_xlatb10 = (x_1081 & x_1082);
      let x_1084 : f32 = u_xlat23;
      u_xlatb17.x = (0.17954966425895690918f >= x_1084);
      let x_1088 : bool = u_xlatb17.x;
      let x_1089 : bool = u_xlatb10;
      u_xlatb10 = (x_1088 & x_1089);
      let x_1091 : f32 = u_xlat23;
      let x_1094 : f32 = u_xlat3.x;
      u_xlat23 = ((x_1091 * 5.56948947906494140625f) + x_1094);
      let x_1096 : f32 = u_xlat23;
      u_xlatb23 = (1.0f >= x_1096);
      let x_1098 : bool = u_xlatb23;
      let x_1099 : bool = u_xlatb10;
      u_xlatb23 = (x_1098 & x_1099);
      let x_1101 : bool = u_xlatb23;
      if (x_1101) {
        let x_1106 : bool = u_xlatb21;
        u_xlati23 = select(0i, 1i, x_1106);
        let x_1108 : i32 = u_xlati23;
        if ((x_1108 != 0i)) {
          let x_1112 : vec3<f32> = u_xlat1;
          let x_1114 : vec2<f32> = (vec2<f32>(x_1112.x, x_1112.y) + vec2<f32>(-0.63999998569488525391f, -0.33000001311302185059f));
          let x_1115 : vec4<f32> = u_xlat3;
          u_xlat3 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
          let x_1117 : vec4<f32> = u_xlat3;
          u_xlat23 = dot(vec2<f32>(x_1117.x, x_1117.y), vec2<f32>(-0.33999997377395629883f, 0.27000001072883605957f));
          let x_1120 : vec4<f32> = u_xlat3;
          u_xlat3.x = dot(vec2<f32>(x_1120.x, x_1120.y), vec2<f32>(-0.48999997973442077637f, -0.27000001072883605957f));
          let x_1124 : f32 = u_xlat23;
          u_xlat10 = (x_1124 * 0.09369997680187225342f);
          let x_1127 : f32 = u_xlat3.x;
          u_xlat17 = (x_1127 * 0.09369997680187225342f);
          let x_1129 : f32 = u_xlat23;
          let x_1131 : f32 = u_xlat17;
          u_xlat23 = ((x_1129 * 0.31299999356269836426f) + -(x_1131));
          let x_1135 : f32 = u_xlat3.x;
          let x_1137 : f32 = u_xlat10;
          u_xlat3.x = ((x_1135 * 0.18849998712539672852f) + -(x_1137));
          let x_1141 : f32 = u_xlat23;
          u_xlat10 = ((-(x_1141) * 19.9120635986328125f) + 1.0f);
          let x_1146 : f32 = u_xlat3.x;
          let x_1149 : f32 = u_xlat10;
          u_xlat3.x = ((-(x_1146) * 19.9120635986328125f) + x_1149);
          let x_1153 : f32 = u_xlat3.x;
          u_xlatb10 = (x_1153 >= 0.0f);
          let x_1156 : f32 = u_xlat3.x;
          u_xlatb17.x = (1.0f >= x_1156);
          let x_1160 : bool = u_xlatb17.x;
          let x_1161 : bool = u_xlatb10;
          u_xlatb10 = (x_1160 & x_1161);
          let x_1163 : f32 = u_xlat23;
          u_xlatb17.x = (x_1163 >= 0.0f);
          let x_1167 : bool = u_xlatb17.x;
          let x_1168 : bool = u_xlatb10;
          u_xlatb10 = (x_1167 & x_1168);
          let x_1170 : f32 = u_xlat23;
          u_xlatb17.x = (0.05022080987691879272f >= x_1170);
          let x_1174 : bool = u_xlatb17.x;
          let x_1175 : bool = u_xlatb10;
          u_xlatb10 = (x_1174 & x_1175);
          let x_1177 : f32 = u_xlat23;
          let x_1180 : f32 = u_xlat3.x;
          u_xlat23 = ((x_1177 * 19.9120635986328125f) + x_1180);
          let x_1182 : f32 = u_xlat23;
          u_xlatb23 = (1.0f >= x_1182);
          let x_1184 : bool = u_xlatb23;
          let x_1188 : bool = u_xlatb10;
          u_xlati23 = bitcast<i32>(((select(0u, 1u, x_1184) * 4294967295u) & (select(0u, 1u, x_1188) * 4294967295u)));
          let x_1193 : i32 = u_xlati23;
          let x_1194 : bool = (x_1193 != 0i);
          let x_1200 : vec3<f32> = select(vec3<f32>(3.0f, 0.5f, 0.5f), vec3<f32>(0.40000000596046447754f, 0.60000002384185791016f, 0.40000000596046447754f), vec3<bool>(x_1194, x_1194, x_1194));
          let x_1201 : vec4<f32> = u_xlat3;
          u_xlat3 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
        } else {
          let x_1205 : f32 = u_xlat1.y;
          u_xlat24 = (1.0f / x_1205);
          let x_1208 : f32 = u_xlat1.x;
          let x_1209 : f32 = u_xlat24;
          u_xlat4.x = (x_1208 * x_1209);
          let x_1214 : f32 = u_xlat1.x;
          u_xlat25 = (-(x_1214) + 1.0f);
          let x_1218 : f32 = u_xlat1.y;
          let x_1220 : f32 = u_xlat25;
          u_xlat25 = (-(x_1218) + x_1220);
          let x_1222 : f32 = u_xlat24;
          let x_1223 : f32 = u_xlat25;
          u_xlat4.z = (x_1222 * x_1223);
          u_xlat4.y = 1.0f;
          let x_1231 : vec4<f32> = u_xlat4;
          u_xlat5.x = dot(vec3<f32>(1.71235167980194091797f, -0.35487896203994750977f, -0.25034135580062866211f), vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
          let x_1239 : vec4<f32> = u_xlat4;
          u_xlat5.y = dot(vec3<f32>(-0.66728621721267700195f, 1.61794054508209228516f, 0.0149537995457649231f), vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
          let x_1247 : vec4<f32> = u_xlat4;
          u_xlat5.z = dot(vec3<f32>(0.01763984933495521545f, -0.04277060180902481079f, 0.94210320711135864258f), vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
          let x_1256 : vec4<f32> = u_xlat4;
          u_xlat6.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
          let x_1264 : vec4<f32> = u_xlat4;
          u_xlat6.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
          let x_1272 : vec4<f32> = u_xlat4;
          u_xlat6.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
          let x_1276 : bool = u_xlatb22;
          if (x_1276) {
            let x_1280 : vec3<f32> = u_xlat6;
            x_1277 = x_1280;
          } else {
            let x_1282 : vec3<f32> = u_xlat5;
            x_1277 = x_1282;
          }
          let x_1283 : vec3<f32> = x_1277;
          let x_1284 : vec4<f32> = u_xlat4;
          u_xlat4 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
          let x_1287 : vec4<f32> = u_xlat4;
          let x_1289 : vec4<f32> = u_xlat4;
          u_xlat22 = dot(vec3<f32>(x_1287.x, x_1287.y, x_1287.z), vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
          let x_1292 : f32 = u_xlat22;
          u_xlat22 = sqrt(x_1292);
          let x_1294 : f32 = u_xlat22;
          u_xlat22 = (1.0f / x_1294);
          let x_1296 : vec4<f32> = u_xlat4;
          u_xlat24 = dot(vec3<f32>(x_1296.x, x_1296.y, x_1296.z), vec3<f32>(0.33300000429153442383f, 0.33300000429153442383f, 0.33300000429153442383f));
          let x_1301 : f32 = u_xlat24;
          let x_1304 : vec4<f32> = u_xlat4;
          u_xlat5 = (-(vec3<f32>(x_1301, x_1301, x_1301)) + vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
          let x_1307 : vec3<f32> = u_xlat5;
          let x_1308 : vec3<f32> = u_xlat5;
          u_xlat24 = dot(x_1307, x_1308);
          let x_1310 : f32 = u_xlat24;
          u_xlat24 = sqrt(x_1310);
          let x_1312 : f32 = u_xlat24;
          u_xlat24 = (x_1312 * -2.88539004325866699219f);
          let x_1315 : f32 = u_xlat24;
          u_xlat24 = exp2(x_1315);
          let x_1317 : f32 = u_xlat24;
          u_xlat24 = ((x_1317 * 0.5f) + 1.0f);
          let x_1320 : f32 = u_xlat22;
          let x_1321 : f32 = u_xlat24;
          u_xlat22 = (x_1320 * x_1321);
          let x_1323 : f32 = u_xlat22;
          let x_1325 : vec4<f32> = u_xlat4;
          let x_1327 : vec3<f32> = (vec3<f32>(x_1323, x_1323, x_1323) * vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
          let x_1328 : vec4<f32> = u_xlat3;
          u_xlat3 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
          u_xlati23 = -1i;
        }
        let x_1331 : f32 = u_xlat15;
        u_xlat4.w = max(x_1331, 0.15000000596046447754f);
        let x_1334 : vec4<f32> = u_xlat3;
        let x_1337 : vec4<f32> = x_28.x_HDRDebugParams;
        let x_1339 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * vec3<f32>(x_1337.z, x_1337.z, x_1337.z));
        let x_1340 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
        let x_1346 : vec3<f32> = u_xlat1;
        let x_1348 : vec4<f32> = textureSampleLevel(x_xyBuffer, sampler_PointClamp, vec2<f32>(x_1346.x, x_1346.y), 0.0f);
        u_xlat1.x = x_1348.x;
        let x_1353 : f32 = u_xlat1.x;
        u_xlatb1 = !((x_1353 == 0.0f));
        u_xlat3.x = 0.0f;
        u_xlat3.z = 0.0f;
        u_xlat3.w = 1.0f;
        let x_1359 : f32 = x_28.x_HDRDebugParams.z;
        u_xlat3.y = x_1359;
        let x_1361 : i32 = u_xlati23;
        if ((x_1361 != 0i)) {
          let x_1366 : vec4<f32> = u_xlat3;
          x_1363 = vec3<f32>(x_1366.x, x_1366.y, x_1366.z);
        } else {
          let x_1369 : vec4<f32> = u_xlat3;
          x_1363 = vec3<f32>(x_1369.y, x_1369.z, x_1369.z);
        }
        let x_1371 : vec3<f32> = x_1363;
        let x_1372 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
        let x_1374 : bool = u_xlatb21;
        if (x_1374) {
          let x_1378 : vec4<f32> = u_xlat3;
          x_1375 = vec3<f32>(x_1378.x, x_1378.y, x_1378.z);
        } else {
          let x_1381 : vec4<f32> = u_xlat4;
          x_1375 = vec3<f32>(x_1381.x, x_1381.y, x_1381.z);
        }
        let x_1383 : vec3<f32> = x_1375;
        let x_1384 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
        let x_1386 : bool = u_xlatb1;
        let x_1387 : vec4<f32> = u_xlat3;
        let x_1388 : vec4<f32> = u_xlat4;
        u_xlat3 = select(x_1388, x_1387, vec4<bool>(x_1386, x_1386, x_1386, x_1386));
      } else {
        u_xlat3.x = 0.0f;
        u_xlat3.y = 0.0f;
        u_xlat3.z = 0.0f;
        u_xlat3.w = 0.0f;
      }
      let x_1397 : f32 = u_xlat15;
      u_xlat21 = (-(x_1397) + 1.0f);
      let x_1400 : f32 = u_xlat21;
      let x_1402 : vec4<f32> = u_xlat3;
      u_xlat1 = (vec3<f32>(x_1400, x_1400, x_1400) * vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
    } else {
      u_xlat1.x = 0.0f;
      u_xlat1.y = 0.0f;
      u_xlat1.z = 0.0f;
      u_xlat3.w = 0.0f;
    }
    let x_1411 : f32 = u_xlat3.w;
    u_xlat21 = (-(x_1411) + 1.0f);
    let x_1414 : f32 = u_xlat21;
    let x_1416 : vec3<f32> = u_xlat2;
    u_xlat2 = (vec3<f32>(x_1414, x_1414, x_1414) * x_1416);
    let x_1418 : vec3<f32> = u_xlat1;
    let x_1419 : vec4<f32> = u_xlat3;
    let x_1422 : vec3<f32> = u_xlat2;
    u_xlat1 = ((x_1418 * vec3<f32>(x_1419.w, x_1419.w, x_1419.w)) + x_1422);
  } else {
    let x_1426 : f32 = u_xlat0.z;
    let x_1428 : f32 = u_xlat0.y;
    u_xlat21 = max(x_1426, x_1428);
    let x_1430 : f32 = u_xlat21;
    let x_1432 : f32 = u_xlat0.x;
    u_xlat21 = max(x_1430, x_1432);
    let x_1435 : f32 = x_28.x_HDRDebugParams.z;
    u_xlat2.x = x_1435;
    u_xlat2.z = 0.0f;
    let x_1438 : f32 = u_xlat21;
    let x_1440 : f32 = u_xlat2.x;
    u_xlat22 = (x_1438 + -(x_1440));
    let x_1444 : f32 = u_xlat2.x;
    let x_1447 : f32 = x_28.x_HDRDebugParams.y;
    u_xlat9.x = (-(x_1444) + x_1447);
    let x_1450 : f32 = u_xlat22;
    let x_1452 : f32 = u_xlat9.x;
    u_xlat22 = (x_1450 / x_1452);
    let x_1454 : f32 = u_xlat22;
    u_xlat22 = clamp(x_1454, 0.0f, 1.0f);
    let x_1457 : f32 = x_28.x_HDRDebugParams.z;
    let x_1458 : f32 = u_xlat21;
    u_xlatb21 = (x_1457 < x_1458);
    let x_1460 : vec3<f32> = u_xlat2;
    let x_1463 : vec3<f32> = u_xlat2;
    let x_1465 : vec3<f32> = (-(vec3<f32>(x_1460.x, x_1460.x, x_1460.z)) + vec3<f32>(x_1463.x, x_1463.z, x_1463.z));
    let x_1466 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
    let x_1468 : f32 = u_xlat22;
    let x_1470 : vec4<f32> = u_xlat3;
    let x_1473 : vec3<f32> = u_xlat2;
    u_xlat2 = ((vec3<f32>(x_1468, x_1468, x_1468) * vec3<f32>(x_1470.x, x_1470.y, x_1470.z)) + vec3<f32>(x_1473.x, x_1473.x, x_1473.z));
    let x_1476 : vec3<f32> = u_xlat0;
    u_xlat0.x = dot(x_1476, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
    let x_1483 : bool = u_xlatb21;
    if (x_1483) {
      let x_1487 : vec3<f32> = u_xlat2;
      x_1484 = x_1487;
    } else {
      let x_1489 : vec3<f32> = u_xlat0;
      x_1484 = vec3<f32>(x_1489.x, x_1489.x, x_1489.x);
    }
    let x_1491 : vec3<f32> = x_1484;
    u_xlat1 = x_1491;
  }
  let x_1494 : vec3<f32> = u_xlat1;
  let x_1495 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


