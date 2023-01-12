struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati27 : i32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat19 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat29 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat25 : f32;
  var u_xlat34 : f32;
  var u_xlat17 : f32;
  var u_xlatb26 : bool;
  var u_xlatb29 : bool;
  var x_316 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_544 : f32;
  var x_556 : f32;
  var x_568 : f32;
  var x_620 : f32;
  var x_633 : f32;
  var x_645 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat9 = ((x_33 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_41 : vec2<f32> = u_xlat9;
  let x_42 : vec2<f32> = u_xlat9;
  u_xlat27 = dot(x_41, x_42);
  let x_44 : f32 = u_xlat27;
  let x_46 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(x_44, x_44) * x_46);
  let x_48 : vec2<f32> = u_xlat9;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat9 = (x_48 * vec2<f32>(x_59.x, x_59.y));
  let x_66 : vec2<f32> = u_xlat9;
  let x_71 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_73 : vec2<f32> = (-(x_66) * vec2<f32>(x_71.z, x_71.w));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_80 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) * vec2<f32>(0.5f, 0.5f));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_81.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat27 = dot(vec2<f32>(x_83.x, x_83.y), vec2<f32>(x_85.x, x_85.y));
  let x_88 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_88);
  let x_92 : f32 = u_xlat27;
  u_xlati27 = i32(x_92);
  let x_94 : i32 = u_xlati27;
  u_xlati27 = max(x_94, 3i);
  let x_97 : i32 = u_xlati27;
  u_xlati27 = min(x_97, 16i);
  let x_100 : i32 = u_xlati27;
  u_xlat1.x = f32(x_100);
  let x_103 : vec2<f32> = u_xlat9;
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat9 = (-(x_103) / vec2<f32>(x_105.x, x_105.x));
  let x_115 : f32 = x_51.x_Distortion_Amount.w;
  u_xlatb10 = (0.0f < x_115);
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  u_xlat19 = x_135;
  u_xlati_loop_1 = 0i;
  loop {
    let x_143 : i32 = u_xlati_loop_1;
    let x_144 : i32 = u_xlati27;
    if ((x_143 < x_144)) {
    } else {
      break;
    }
    let x_147 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_147);
    let x_149 : f32 = u_xlat29;
    u_xlat29 = (x_149 + 0.5f);
    let x_151 : f32 = u_xlat29;
    let x_153 : f32 = u_xlat1.x;
    u_xlat2.x = (x_151 / x_153);
    let x_157 : vec2<f32> = u_xlat19;
    let x_160 : vec2<f32> = (x_157 + vec2<f32>(-0.5f, -0.5f));
    let x_161 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
    let x_164 : vec4<f32> = u_xlat6;
    let x_167 : vec4<f32> = x_51.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_164.x, x_164.y) * vec2<f32>(x_167.z, x_167.z)) + vec2<f32>(0.5f, 0.5f));
    let x_171 : vec4<f32> = u_xlat6;
    let x_174 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_179 : vec4<f32> = x_51.x_Distortion_CenterScale;
    let x_182 : vec2<f32> = ((vec2<f32>(x_171.x, x_171.y) * vec2<f32>(x_174.z, x_174.z)) + -(vec2<f32>(x_179.x, x_179.y)));
    let x_183 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
    let x_185 : vec4<f32> = u_xlat6;
    let x_188 : vec4<f32> = x_51.x_Distortion_CenterScale;
    let x_190 : vec2<f32> = (vec2<f32>(x_185.x, x_185.y) * vec2<f32>(x_188.z, x_188.w));
    let x_191 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_190.x, x_190.y, x_191.z, x_191.w);
    let x_193 : vec4<f32> = u_xlat6;
    let x_195 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_193.x, x_193.y), vec2<f32>(x_195.x, x_195.y));
    let x_198 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_198);
    let x_200 : bool = u_xlatb10;
    if (x_200) {
      let x_204 : f32 = u_xlat29;
      let x_207 : vec4<f32> = x_51.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_204, x_204) * vec2<f32>(x_207.x, x_207.y));
      let x_212 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_212);
      let x_215 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_215);
      let x_219 : f32 = u_xlat7.x;
      let x_220 : f32 = u_xlat8;
      u_xlat7.x = (x_219 / x_220);
      let x_225 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_225);
      let x_228 : f32 = u_xlat7.x;
      let x_229 : f32 = u_xlat16;
      u_xlat7.x = ((x_228 * x_229) + -1.0f);
      let x_233 : vec4<f32> = u_xlat6;
      let x_235 : vec2<f32> = u_xlat7;
      let x_238 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_233.x, x_233.y) * vec2<f32>(x_235.x, x_235.x)) + x_238);
    } else {
      let x_242 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_242);
      let x_244 : f32 = u_xlat25;
      let x_246 : f32 = x_51.x_Distortion_Amount.x;
      u_xlat25 = (x_244 * x_246);
      let x_248 : f32 = u_xlat29;
      let x_250 : f32 = x_51.x_Distortion_Amount.y;
      u_xlat29 = (x_248 * x_250);
      let x_253 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_253), 1.0f);
      let x_256 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_256), 1.0f);
      let x_259 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_259);
      let x_261 : f32 = u_xlat34;
      let x_262 : f32 = u_xlat8;
      u_xlat34 = (x_261 * x_262);
      let x_264 : f32 = u_xlat34;
      let x_265 : f32 = u_xlat34;
      u_xlat8 = (x_264 * x_265);
      let x_268 : f32 = u_xlat8;
      u_xlat17 = ((x_268 * 0.0208351f) + -0.085133001f);
      let x_273 : f32 = u_xlat8;
      let x_274 : f32 = u_xlat17;
      u_xlat17 = ((x_273 * x_274) + 0.180141002f);
      let x_278 : f32 = u_xlat8;
      let x_279 : f32 = u_xlat17;
      u_xlat17 = ((x_278 * x_279) + -0.330299497f);
      let x_283 : f32 = u_xlat8;
      let x_284 : f32 = u_xlat17;
      u_xlat8 = ((x_283 * x_284) + 0.999866009f);
      let x_288 : f32 = u_xlat34;
      let x_289 : f32 = u_xlat8;
      u_xlat17 = (x_288 * x_289);
      let x_292 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_292));
      let x_295 : f32 = u_xlat17;
      u_xlat17 = ((x_295 * -2.0f) + 1.570796371f);
      let x_300 : bool = u_xlatb26;
      let x_301 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_301, x_300);
      let x_303 : f32 = u_xlat34;
      let x_304 : f32 = u_xlat8;
      let x_306 : f32 = u_xlat17;
      u_xlat34 = ((x_303 * x_304) + x_306);
      let x_308 : f32 = u_xlat29;
      u_xlat29 = min(x_308, 1.0f);
      let x_311 : f32 = u_xlat29;
      let x_312 : f32 = u_xlat29;
      u_xlatb29 = (x_311 < -(x_312));
      let x_315 : bool = u_xlatb29;
      if (x_315) {
        let x_319 : f32 = u_xlat34;
        x_316 = -(x_319);
      } else {
        let x_322 : f32 = u_xlat34;
        x_316 = x_322;
      }
      let x_323 : f32 = x_316;
      u_xlat29 = x_323;
      let x_324 : f32 = u_xlat25;
      let x_325 : f32 = u_xlat29;
      u_xlat29 = ((x_324 * x_325) + -1.0f);
      let x_328 : vec4<f32> = u_xlat6;
      let x_330 : f32 = u_xlat29;
      let x_333 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_328.x, x_328.y) * vec2<f32>(x_330, x_330)) + x_333);
    }
    let x_335 : vec2<f32> = u_xlat7;
    u_xlat7 = x_335;
    let x_336 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_336, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_340 : vec2<f32> = u_xlat7;
    let x_342 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_344 : vec2<f32> = (x_340 * vec2<f32>(x_342, x_342));
    let x_345 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
    let x_352 : vec4<f32> = u_xlat6;
    let x_354 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_352.x, x_352.y), 0.0f);
    u_xlat6 = x_354;
    let x_360 : vec3<f32> = u_xlat2;
    let x_362 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_360.x, x_360.y), 0.0f);
    let x_363 : vec3<f32> = vec3<f32>(x_362.x, x_362.y, x_362.z);
    let x_364 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
    let x_366 : vec4<f32> = u_xlat6;
    let x_367 : vec4<f32> = u_xlat3;
    let x_369 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_366 * x_367) + x_369);
    let x_371 : vec4<f32> = u_xlat3;
    let x_372 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_371 + x_372);
    let x_374 : vec2<f32> = u_xlat9;
    let x_375 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_374 + x_375);

    continuing {
      let x_377 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_377 + 1i);
    }
  }
  let x_379 : vec4<f32> = u_xlat4;
  let x_380 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_379 / x_380);
  let x_382 : vec3<f32> = u_xlat0;
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_382.x, x_382.x, x_382.x) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_388 : vec2<f32> = vs_TEXCOORD1;
  let x_391 : vec4<f32> = x_51.x_Grain_Params2;
  let x_395 : vec4<f32> = x_51.x_Grain_Params2;
  let x_397 : vec2<f32> = ((x_388 * vec2<f32>(x_391.x, x_391.y)) + vec2<f32>(x_395.z, x_395.w));
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
  let x_405 : vec4<f32> = u_xlat1;
  let x_407 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_405.x, x_405.y));
  let x_408 : vec3<f32> = vec3<f32>(x_407.x, x_407.y, x_407.z);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec3<f32> = u_xlat0;
  u_xlat2 = x_411;
  let x_412 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_412, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_416 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(x_416, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_422 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_422);
  let x_426 : f32 = x_51.x_Grain_Params1.x;
  let x_427 : f32 = u_xlat27;
  u_xlat27 = ((x_426 * -(x_427)) + 1.0f);
  let x_431 : vec3<f32> = u_xlat0;
  let x_432 : vec4<f32> = u_xlat1;
  let x_434 : vec3<f32> = (x_431 * vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat1;
  let x_440 : f32 = x_51.x_Grain_Params1.y;
  let x_442 : f32 = x_51.x_Grain_Params1.y;
  let x_444 : f32 = x_51.x_Grain_Params1.y;
  let x_446 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_440, x_442, x_444));
  let x_447 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : f32 = u_xlat27;
  let x_454 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(x_451, x_451, x_451)) + x_454);
  let x_456 : vec2<f32> = vs_TEXCOORD0;
  let x_458 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_462 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_464 : vec2<f32> = ((x_456 * vec2<f32>(x_458.x, x_458.y)) + vec2<f32>(x_462.z, x_462.w));
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
  let x_472 : vec4<f32> = u_xlat1;
  let x_474 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_472.x, x_472.y));
  u_xlat27 = x_474.w;
  let x_476 : f32 = u_xlat27;
  u_xlat27 = ((x_476 * 2.0f) + -1.0f);
  let x_479 : f32 = u_xlat27;
  u_xlat1.x = ((x_479 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_485 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_485, 0.0f, 1.0f);
  let x_489 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_489 * 2.0f) + -1.0f);
  let x_493 : f32 = u_xlat27;
  u_xlat27 = (-(abs(x_493)) + 1.0f);
  let x_497 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_497);
  let x_499 : f32 = u_xlat27;
  u_xlat27 = (-(x_499) + 1.0f);
  let x_502 : f32 = u_xlat27;
  let x_504 : f32 = u_xlat1.x;
  u_xlat27 = (x_502 * x_504);
  let x_506 : vec3<f32> = u_xlat0;
  let x_509 : vec3<f32> = (x_506 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_510 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_512), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_517 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_517);
  let x_519 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_519 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_523 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_523);
  let x_525 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_525 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_537 : vec3<f32> = u_xlat0;
  let x_540 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_537.x, x_537.y, x_537.z, x_537.x));
  u_xlatb0 = vec3<bool>(x_540.x, x_540.y, x_540.z);
  let x_543 : bool = u_xlatb0.x;
  if (x_543) {
    let x_548 : f32 = u_xlat1.x;
    x_544 = x_548;
  } else {
    let x_551 : f32 = u_xlat2.x;
    x_544 = x_551;
  }
  let x_552 : f32 = x_544;
  u_xlat0.x = x_552;
  let x_555 : bool = u_xlatb0.y;
  if (x_555) {
    let x_560 : f32 = u_xlat1.y;
    x_556 = x_560;
  } else {
    let x_563 : f32 = u_xlat2.y;
    x_556 = x_563;
  }
  let x_564 : f32 = x_556;
  u_xlat0.y = x_564;
  let x_567 : bool = u_xlatb0.z;
  if (x_567) {
    let x_572 : f32 = u_xlat1.z;
    x_568 = x_572;
  } else {
    let x_575 : f32 = u_xlat2.z;
    x_568 = x_575;
  }
  let x_576 : f32 = x_568;
  u_xlat0.z = x_576;
  let x_578 : f32 = u_xlat27;
  let x_583 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_578, x_578, x_578) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_583);
  let x_585 : vec3<f32> = u_xlat0;
  let x_588 : vec3<f32> = (x_585 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_589 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_591 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_595 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_595 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_599 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_599), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_602 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_602);
  let x_604 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_604 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_608 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_608);
  let x_612 : vec3<f32> = u_xlat0;
  let x_614 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_612.x, x_612.y, x_612.z, x_612.x));
  u_xlatb0 = vec3<bool>(x_614.x, x_614.y, x_614.z);
  let x_619 : bool = u_xlatb0.x;
  if (x_619) {
    let x_624 : f32 = u_xlat1.x;
    x_620 = x_624;
  } else {
    let x_627 : f32 = u_xlat2.x;
    x_620 = x_627;
  }
  let x_628 : f32 = x_620;
  SV_Target0.x = x_628;
  let x_632 : bool = u_xlatb0.y;
  if (x_632) {
    let x_637 : f32 = u_xlat1.y;
    x_633 = x_637;
  } else {
    let x_640 : f32 = u_xlat2.y;
    x_633 = x_640;
  }
  let x_641 : f32 = x_633;
  SV_Target0.y = x_641;
  let x_644 : bool = u_xlatb0.z;
  if (x_644) {
    let x_649 : f32 = u_xlat1.z;
    x_645 = x_649;
  } else {
    let x_652 : f32 = u_xlat2.z;
    x_645 = x_652;
  }
  let x_653 : f32 = x_645;
  SV_Target0.z = x_653;
  let x_656 : f32 = u_xlat1.w;
  SV_Target0.w = x_656;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

