struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_110 : PGlobals;

@group(0) @binding(2) var x_SearchTex : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(1) var x_AreaTex : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlatb13 : bool;
  var u_xlat12 : f32;
  var u_xlatb9 : bool;
  var u_xlat9 : vec2<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  let x_25 : vec2<f32> = vec2<f32>(x_24.x, x_24.y);
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_26.z, x_26.w);
  let x_34 : vec4<f32> = u_xlat0;
  let x_37 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_34.y, x_34.x, x_34.y, x_34.y));
  u_xlatb0 = vec2<bool>(x_37.x, x_37.y);
  let x_43 : bool = u_xlatb0.x;
  if (x_43) {
    let x_49 : vec4<f32> = vs_TEXCOORD2;
    let x_50 : vec2<f32> = vec2<f32>(x_49.x, x_49.y);
    let x_51 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_50.x, x_50.y, x_51.z, x_51.w);
    u_xlat1.z = 1.0f;
    u_xlat2.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_70 : f32 = vs_TEXCOORD4.x;
      let x_72 : f32 = u_xlat1.x;
      u_xlatb0.x = (x_70 < x_72);
      let x_78 : f32 = u_xlat1.z;
      u_xlatb8 = (0.828100026f < x_78);
      let x_80 : bool = u_xlatb8;
      let x_82 : bool = u_xlatb0.x;
      u_xlatb0.x = (x_80 & x_82);
      let x_86 : f32 = u_xlat2.x;
      u_xlatb8 = (x_86 == 0.0f);
      let x_88 : bool = u_xlatb8;
      let x_90 : bool = u_xlatb0.x;
      u_xlatb0.x = (x_88 & x_90);
      let x_94 : bool = u_xlatb0.x;
      if (!(x_94)) {
        break;
      }
      let x_102 : vec4<f32> = u_xlat1;
      let x_104 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_102.x, x_102.y), 0.0f);
      let x_105 : vec2<f32> = vec2<f32>(x_104.x, x_104.y);
      let x_106 : vec3<f32> = u_xlat2;
      u_xlat2 = vec3<f32>(x_105.x, x_105.y, x_106.z);
      let x_115 : vec4<f32> = x_110.x_MainTex_TexelSize;
      let x_121 : vec4<f32> = u_xlat1;
      let x_123 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(-2.0f, -0.0f)) + vec2<f32>(x_121.x, x_121.y));
      let x_124 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
      let x_128 : f32 = u_xlat2.y;
      u_xlat1.z = x_128;
    }
    let x_130 : vec4<f32> = u_xlat1;
    let x_131 : vec2<f32> = vec2<f32>(x_130.x, x_130.z);
    let x_132 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_132.x, x_131.x, x_131.y);
    let x_134 : vec3<f32> = u_xlat2;
    let x_142 : vec2<f32> = ((vec2<f32>(x_134.x, x_134.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
    let x_143 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_142.x, x_143.y, x_142.y, x_143.w);
    let x_149 : vec4<f32> = u_xlat0;
    let x_151 : vec4<f32> = textureSampleLevel(x_SearchTex, sampler_MainTex, vec2<f32>(x_149.x, x_149.z), 0.0f);
    u_xlat0.x = x_151.w;
    let x_156 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_156 * -2.007874012f) + 3.25f);
    let x_164 : f32 = x_110.x_MainTex_TexelSize.x;
    let x_166 : f32 = u_xlat0.x;
    let x_169 : f32 = u_xlat2.y;
    u_xlat1.x = ((x_164 * x_166) + x_169);
    let x_174 : f32 = vs_TEXCOORD3.y;
    u_xlat1.y = x_174;
    let x_179 : vec4<f32> = u_xlat1;
    let x_181 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_179.x, x_179.y), 0.0f);
    u_xlat0.x = x_181.x;
    let x_184 : vec4<f32> = vs_TEXCOORD2;
    let x_185 : vec2<f32> = vec2<f32>(x_184.z, x_184.w);
    let x_186 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_185.x, x_185.y, x_186.z);
    u_xlat2.z = 1.0f;
    u_xlat3.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_198 : f32 = u_xlat2.x;
      let x_200 : f32 = vs_TEXCOORD4.y;
      u_xlatb12 = (x_198 < x_200);
      let x_204 : f32 = u_xlat2.z;
      u_xlatb13 = (0.828100026f < x_204);
      let x_206 : bool = u_xlatb12;
      let x_207 : bool = u_xlatb13;
      u_xlatb12 = (x_206 & x_207);
      let x_210 : f32 = u_xlat3.x;
      u_xlatb13 = (x_210 == 0.0f);
      let x_212 : bool = u_xlatb12;
      let x_213 : bool = u_xlatb13;
      u_xlatb12 = (x_212 & x_213);
      let x_215 : bool = u_xlatb12;
      if (!(x_215)) {
        break;
      }
      let x_223 : vec3<f32> = u_xlat2;
      let x_225 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_223.x, x_223.y), 0.0f);
      let x_226 : vec2<f32> = vec2<f32>(x_225.x, x_225.y);
      let x_227 : vec3<f32> = u_xlat3;
      u_xlat3 = vec3<f32>(x_226.x, x_226.y, x_227.z);
      let x_230 : vec4<f32> = x_110.x_MainTex_TexelSize;
      let x_235 : vec3<f32> = u_xlat2;
      let x_237 : vec2<f32> = ((vec2<f32>(x_230.x, x_230.y) * vec2<f32>(2.0f, 0.0f)) + vec2<f32>(x_235.x, x_235.y));
      let x_238 : vec3<f32> = u_xlat2;
      u_xlat2 = vec3<f32>(x_237.x, x_237.y, x_238.z);
      let x_241 : f32 = u_xlat3.y;
      u_xlat2.z = x_241;
    }
    let x_243 : vec3<f32> = u_xlat2;
    let x_244 : vec2<f32> = vec2<f32>(x_243.x, x_243.z);
    let x_245 : vec3<f32> = u_xlat3;
    u_xlat3 = vec3<f32>(x_245.x, x_244.x, x_244.y);
    let x_247 : vec3<f32> = u_xlat3;
    let x_252 : vec2<f32> = ((vec2<f32>(x_247.x, x_247.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
    let x_253 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_252.x, x_252.y, x_253.z);
    let x_259 : vec3<f32> = u_xlat2;
    let x_261 : vec4<f32> = textureSampleLevel(x_SearchTex, sampler_MainTex, vec2<f32>(x_259.x, x_259.y), 0.0f);
    u_xlat12 = x_261.w;
    let x_263 : f32 = u_xlat12;
    u_xlat12 = ((x_263 * -2.007874012f) + 3.25f);
    let x_267 : f32 = x_110.x_MainTex_TexelSize.x;
    let x_269 : f32 = u_xlat12;
    let x_272 : f32 = u_xlat3.y;
    u_xlat1.z = ((-(x_267) * x_269) + x_272);
    let x_276 : vec4<f32> = x_110.x_MainTex_TexelSize;
    let x_278 : vec4<f32> = u_xlat1;
    let x_282 : vec2<f32> = vs_TEXCOORD1;
    let x_285 : vec2<f32> = ((vec2<f32>(x_276.z, x_276.z) * vec2<f32>(x_278.x, x_278.z)) + -(vec2<f32>(x_282.x, x_282.x)));
    let x_286 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_285.x, x_286.y, x_286.z, x_285.y);
    let x_288 : vec4<f32> = u_xlat1;
    let x_290 : vec2<f32> = round(vec2<f32>(x_288.x, x_288.w));
    let x_291 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_290.x, x_291.y, x_291.z, x_290.y);
    let x_293 : vec4<f32> = u_xlat1;
    let x_296 : vec2<f32> = sqrt(abs(vec2<f32>(x_293.x, x_293.w)));
    let x_297 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_296.x, x_297.y, x_297.z, x_296.y);
    let x_302 : vec4<f32> = u_xlat1;
    let x_307 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_302.z, x_302.y), 0.0f, vec2<i32>(1i, 0i));
    u_xlat0.z = x_307.x;
    let x_310 : vec4<f32> = u_xlat0;
    let x_314 : vec2<f32> = (vec2<f32>(x_310.x, x_310.z) * vec2<f32>(4.0f, 4.0f));
    let x_315 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_314.x, x_315.y, x_314.y, x_315.w);
    let x_317 : vec4<f32> = u_xlat0;
    let x_319 : vec2<f32> = round(vec2<f32>(x_317.x, x_317.z));
    let x_320 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_319.x, x_320.y, x_319.y, x_320.w);
    let x_322 : vec4<f32> = u_xlat0;
    let x_327 : vec4<f32> = u_xlat1;
    let x_329 : vec2<f32> = ((vec2<f32>(x_322.x, x_322.z) * vec2<f32>(16.0f, 16.0f)) + vec2<f32>(x_327.x, x_327.w));
    let x_330 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_329.x, x_330.y, x_329.y, x_330.w);
    let x_332 : vec4<f32> = u_xlat0;
    let x_341 : vec2<f32> = ((vec2<f32>(x_332.x, x_332.z) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.003125f, 0.000892857148f));
    let x_342 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_341.x, x_342.y, x_341.y, x_342.w);
    let x_348 : vec4<f32> = u_xlat0;
    let x_350 : vec4<f32> = textureSampleLevel(x_AreaTex, sampler_MainTex, vec2<f32>(x_348.x, x_348.z), 0.0f);
    let x_351 : vec2<f32> = vec2<f32>(x_350.x, x_350.y);
    let x_352 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_351.x, x_352.y, x_351.y, x_352.w);
    let x_356 : vec4<f32> = u_xlat0;
    let x_357 : vec2<f32> = vec2<f32>(x_356.x, x_356.z);
    let x_358 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
  } else {
    let x_362 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y, x_362.z, x_362.w);
  }
  let x_365 : bool = u_xlatb0.y;
  if (x_365) {
    let x_368 : vec4<f32> = vs_TEXCOORD3;
    let x_369 : vec2<f32> = vec2<f32>(x_368.x, x_368.y);
    let x_370 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
    u_xlat0.z = 1.0f;
    u_xlat1.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_380 : f32 = vs_TEXCOORD4.z;
      let x_382 : f32 = u_xlat0.y;
      u_xlatb12 = (x_380 < x_382);
      let x_385 : f32 = u_xlat0.z;
      u_xlatb13 = (0.828100026f < x_385);
      let x_387 : bool = u_xlatb12;
      let x_388 : bool = u_xlatb13;
      u_xlatb12 = (x_387 & x_388);
      let x_391 : f32 = u_xlat1.x;
      u_xlatb13 = (x_391 == 0.0f);
      let x_393 : bool = u_xlatb12;
      let x_394 : bool = u_xlatb13;
      u_xlatb12 = (x_393 & x_394);
      let x_396 : bool = u_xlatb12;
      if (!(x_396)) {
        break;
      }
      let x_404 : vec4<f32> = u_xlat0;
      let x_406 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_404.x, x_404.y), 0.0f);
      let x_407 : vec2<f32> = vec2<f32>(x_406.y, x_406.x);
      let x_408 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
      let x_411 : vec4<f32> = x_110.x_MainTex_TexelSize;
      let x_415 : vec4<f32> = u_xlat0;
      let x_417 : vec2<f32> = ((vec2<f32>(x_411.x, x_411.y) * vec2<f32>(-0.0f, -2.0f)) + vec2<f32>(x_415.x, x_415.y));
      let x_418 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
      let x_421 : f32 = u_xlat1.y;
      u_xlat0.z = x_421;
    }
    let x_423 : vec4<f32> = u_xlat0;
    let x_424 : vec2<f32> = vec2<f32>(x_423.y, x_423.z);
    let x_425 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_425.x, x_424.x, x_424.y, x_425.w);
    let x_427 : vec4<f32> = u_xlat1;
    let x_430 : vec2<f32> = ((vec2<f32>(x_427.x, x_427.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
    let x_431 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
    let x_436 : vec4<f32> = u_xlat0;
    let x_438 : vec4<f32> = textureSampleLevel(x_SearchTex, sampler_MainTex, vec2<f32>(x_436.x, x_436.y), 0.0f);
    u_xlat0.x = x_438.w;
    let x_442 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_442 * -2.007874012f) + 3.25f);
    let x_447 : f32 = x_110.x_MainTex_TexelSize.y;
    let x_449 : f32 = u_xlat0.x;
    let x_452 : f32 = u_xlat1.y;
    u_xlat0.x = ((x_447 * x_449) + x_452);
    let x_456 : f32 = vs_TEXCOORD2.x;
    u_xlat0.y = x_456;
    let x_461 : vec4<f32> = u_xlat0;
    let x_463 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_461.y, x_461.x), 0.0f);
    u_xlat1.x = x_463.y;
    let x_466 : vec4<f32> = vs_TEXCOORD3;
    let x_467 : vec2<f32> = vec2<f32>(x_466.z, x_466.w);
    let x_468 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_467.x, x_467.y, x_468.z);
    u_xlat2.z = 1.0f;
    u_xlat3.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_478 : f32 = u_xlat2.y;
      let x_480 : f32 = vs_TEXCOORD4.w;
      u_xlatb12 = (x_478 < x_480);
      let x_484 : f32 = u_xlat2.z;
      u_xlatb9 = (0.828100026f < x_484);
      let x_486 : bool = u_xlatb12;
      let x_487 : bool = u_xlatb9;
      u_xlatb12 = (x_486 & x_487);
      let x_490 : f32 = u_xlat3.x;
      u_xlatb9 = (x_490 == 0.0f);
      let x_492 : bool = u_xlatb12;
      let x_493 : bool = u_xlatb9;
      u_xlatb12 = (x_492 & x_493);
      let x_495 : bool = u_xlatb12;
      if (!(x_495)) {
        break;
      }
      let x_503 : vec3<f32> = u_xlat2;
      let x_505 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_503.x, x_503.y), 0.0f);
      let x_506 : vec2<f32> = vec2<f32>(x_505.y, x_505.x);
      let x_507 : vec3<f32> = u_xlat3;
      u_xlat3 = vec3<f32>(x_506.x, x_506.y, x_507.z);
      let x_510 : vec4<f32> = x_110.x_MainTex_TexelSize;
      let x_514 : vec3<f32> = u_xlat2;
      let x_516 : vec2<f32> = ((vec2<f32>(x_510.x, x_510.y) * vec2<f32>(0.0f, 2.0f)) + vec2<f32>(x_514.x, x_514.y));
      let x_517 : vec3<f32> = u_xlat2;
      u_xlat2 = vec3<f32>(x_516.x, x_516.y, x_517.z);
      let x_520 : f32 = u_xlat3.y;
      u_xlat2.z = x_520;
    }
    let x_522 : vec3<f32> = u_xlat2;
    let x_523 : vec2<f32> = vec2<f32>(x_522.y, x_522.z);
    let x_524 : vec3<f32> = u_xlat3;
    u_xlat3 = vec3<f32>(x_524.x, x_523.x, x_523.y);
    let x_528 : vec3<f32> = u_xlat3;
    u_xlat9 = ((vec2<f32>(x_528.x, x_528.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
    let x_535 : vec2<f32> = u_xlat9;
    let x_536 : vec4<f32> = textureSampleLevel(x_SearchTex, sampler_MainTex, x_535, 0.0f);
    u_xlat12 = x_536.w;
    let x_538 : f32 = u_xlat12;
    u_xlat12 = ((x_538 * -2.007874012f) + 3.25f);
    let x_542 : f32 = x_110.x_MainTex_TexelSize.y;
    let x_544 : f32 = u_xlat12;
    let x_547 : f32 = u_xlat3.y;
    u_xlat0.z = ((-(x_542) * x_544) + x_547);
    let x_551 : vec4<f32> = x_110.x_MainTex_TexelSize;
    let x_553 : vec4<f32> = u_xlat0;
    let x_556 : vec2<f32> = vs_TEXCOORD1;
    let x_559 : vec2<f32> = ((vec2<f32>(x_551.w, x_551.w) * vec2<f32>(x_553.x, x_553.z)) + -(vec2<f32>(x_556.y, x_556.y)));
    let x_560 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_559.x, x_560.y, x_560.z, x_559.y);
    let x_562 : vec4<f32> = u_xlat0;
    let x_564 : vec2<f32> = round(vec2<f32>(x_562.x, x_562.w));
    let x_565 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_564.x, x_565.y, x_565.z, x_564.y);
    let x_567 : vec4<f32> = u_xlat0;
    let x_570 : vec2<f32> = sqrt(abs(vec2<f32>(x_567.x, x_567.w)));
    let x_571 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_570.x, x_571.y, x_571.z, x_570.y);
    let x_576 : vec4<f32> = u_xlat0;
    let x_579 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_576.y, x_576.z), 0.0f, vec2<i32>(0i, 1i));
    u_xlat1.y = x_579.y;
    let x_583 : vec4<f32> = u_xlat1;
    u_xlat4 = (vec2<f32>(x_583.x, x_583.y) * vec2<f32>(4.0f, 4.0f));
    let x_586 : vec2<f32> = u_xlat4;
    u_xlat4 = round(x_586);
    let x_588 : vec2<f32> = u_xlat4;
    let x_590 : vec4<f32> = u_xlat0;
    let x_592 : vec2<f32> = ((x_588 * vec2<f32>(16.0f, 16.0f)) + vec2<f32>(x_590.x, x_590.w));
    let x_593 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
    let x_595 : vec4<f32> = u_xlat0;
    let x_598 : vec2<f32> = ((vec2<f32>(x_595.x, x_595.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.003125f, 0.000892857148f));
    let x_599 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
    let x_604 : vec4<f32> = u_xlat0;
    let x_606 : vec4<f32> = textureSampleLevel(x_AreaTex, sampler_MainTex, vec2<f32>(x_604.x, x_604.y), 0.0f);
    let x_607 : vec2<f32> = vec2<f32>(x_606.x, x_606.y);
    let x_608 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
    let x_610 : vec4<f32> = u_xlat0;
    let x_611 : vec2<f32> = vec2<f32>(x_610.x, x_610.y);
    let x_612 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_612.x, x_612.y, x_611.x, x_611.y);
  } else {
    let x_615 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_615.x, x_615.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

