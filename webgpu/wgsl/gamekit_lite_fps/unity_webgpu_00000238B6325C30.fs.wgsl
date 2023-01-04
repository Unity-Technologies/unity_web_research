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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati27 : i32;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlatb29 : bool;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati20 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_318 : f32;
  var x_546 : f32;
  var x_558 : f32;
  var x_570 : f32;
  var x_622 : f32;
  var x_635 : f32;
  var x_647 : f32;
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
    let x_144 : i32 = u_xlati_loop_1;
    let x_145 : i32 = u_xlati27;
    if ((x_144 < x_145)) {
    } else {
      break;
    }
    let x_148 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_148);
    let x_150 : f32 = u_xlat29;
    u_xlat29 = (x_150 + 0.5f);
    let x_152 : f32 = u_xlat29;
    let x_154 : f32 = u_xlat1.x;
    u_xlat2.x = (x_152 / x_154);
    let x_158 : vec2<f32> = u_xlat19;
    let x_161 : vec2<f32> = (x_158 + vec2<f32>(-0.5f, -0.5f));
    let x_162 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_161.x, x_161.y, x_162.z, x_162.w);
    let x_165 : vec4<f32> = u_xlat6;
    let x_168 : vec4<f32> = x_51.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_165.x, x_165.y) * vec2<f32>(x_168.z, x_168.z)) + vec2<f32>(0.5f, 0.5f));
    let x_172 : vec4<f32> = u_xlat6;
    let x_175 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_180 : vec4<f32> = x_51.x_Distortion_CenterScale;
    let x_183 : vec2<f32> = ((vec2<f32>(x_172.x, x_172.y) * vec2<f32>(x_175.z, x_175.z)) + -(vec2<f32>(x_180.x, x_180.y)));
    let x_184 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
    let x_186 : vec4<f32> = u_xlat6;
    let x_189 : vec4<f32> = x_51.x_Distortion_CenterScale;
    let x_191 : vec2<f32> = (vec2<f32>(x_186.x, x_186.y) * vec2<f32>(x_189.z, x_189.w));
    let x_192 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_192.w);
    let x_194 : vec4<f32> = u_xlat6;
    let x_196 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_194.x, x_194.y), vec2<f32>(x_196.x, x_196.y));
    let x_199 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_199);
    let x_201 : bool = u_xlatb10;
    if (x_201) {
      let x_205 : f32 = u_xlat29;
      let x_208 : vec4<f32> = x_51.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_205, x_205) * vec2<f32>(x_208.x, x_208.y));
      let x_213 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_213);
      let x_216 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_216);
      let x_220 : f32 = u_xlat7.x;
      let x_221 : f32 = u_xlat8;
      u_xlat7.x = (x_220 / x_221);
      let x_226 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_226);
      let x_229 : f32 = u_xlat7.x;
      let x_230 : f32 = u_xlat16;
      u_xlat7.x = ((x_229 * x_230) + -1.0f);
      let x_234 : vec4<f32> = u_xlat6;
      let x_236 : vec2<f32> = u_xlat7;
      let x_239 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(x_236.x, x_236.x)) + x_239);
    } else {
      let x_243 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_243);
      let x_245 : f32 = u_xlat25;
      let x_247 : f32 = x_51.x_Distortion_Amount.x;
      u_xlat25 = (x_245 * x_247);
      let x_249 : f32 = u_xlat29;
      let x_251 : f32 = x_51.x_Distortion_Amount.y;
      u_xlat29 = (x_249 * x_251);
      let x_254 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_254), 1.0f);
      let x_257 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_257), 1.0f);
      let x_260 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_260);
      let x_262 : f32 = u_xlat34;
      let x_263 : f32 = u_xlat8;
      u_xlat34 = (x_262 * x_263);
      let x_265 : f32 = u_xlat34;
      let x_266 : f32 = u_xlat34;
      u_xlat8 = (x_265 * x_266);
      let x_269 : f32 = u_xlat8;
      u_xlat17 = ((x_269 * 0.0208351f) + -0.085133001f);
      let x_274 : f32 = u_xlat8;
      let x_275 : f32 = u_xlat17;
      u_xlat17 = ((x_274 * x_275) + 0.180141002f);
      let x_279 : f32 = u_xlat8;
      let x_280 : f32 = u_xlat17;
      u_xlat17 = ((x_279 * x_280) + -0.330299497f);
      let x_284 : f32 = u_xlat8;
      let x_285 : f32 = u_xlat17;
      u_xlat8 = ((x_284 * x_285) + 0.999866009f);
      let x_289 : f32 = u_xlat34;
      let x_290 : f32 = u_xlat8;
      u_xlat17 = (x_289 * x_290);
      let x_293 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_293));
      let x_296 : f32 = u_xlat17;
      u_xlat17 = ((x_296 * -2.0f) + 1.570796371f);
      let x_301 : bool = u_xlatb26;
      let x_302 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_302, x_301);
      let x_304 : f32 = u_xlat34;
      let x_305 : f32 = u_xlat8;
      let x_307 : f32 = u_xlat17;
      u_xlat34 = ((x_304 * x_305) + x_307);
      let x_309 : f32 = u_xlat29;
      u_xlat29 = min(x_309, 1.0f);
      let x_312 : f32 = u_xlat29;
      let x_313 : f32 = u_xlat29;
      u_xlatb29 = (x_312 < -(x_313));
      let x_316 : bool = u_xlatb29;
      if (x_316) {
        let x_321 : f32 = u_xlat34;
        x_318 = -(x_321);
      } else {
        let x_324 : f32 = u_xlat34;
        x_318 = x_324;
      }
      let x_325 : f32 = x_318;
      u_xlat29 = x_325;
      let x_326 : f32 = u_xlat25;
      let x_327 : f32 = u_xlat29;
      u_xlat29 = ((x_326 * x_327) + -1.0f);
      let x_330 : vec4<f32> = u_xlat6;
      let x_332 : f32 = u_xlat29;
      let x_335 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_330.x, x_330.y) * vec2<f32>(x_332, x_332)) + x_335);
    }
    let x_337 : vec2<f32> = u_xlat7;
    u_xlat7 = x_337;
    let x_338 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_338, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_342 : vec2<f32> = u_xlat7;
    let x_344 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_346 : vec2<f32> = (x_342 * vec2<f32>(x_344, x_344));
    let x_347 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
    let x_354 : vec4<f32> = u_xlat6;
    let x_356 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_354.x, x_354.y), 0.0f);
    u_xlat6 = x_356;
    let x_362 : vec3<f32> = u_xlat2;
    let x_364 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_362.x, x_362.y), 0.0f);
    let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.z);
    let x_366 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
    let x_368 : vec4<f32> = u_xlat6;
    let x_369 : vec4<f32> = u_xlat3;
    let x_371 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_368 * x_369) + x_371);
    let x_373 : vec4<f32> = u_xlat3;
    let x_374 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_373 + x_374);
    let x_376 : vec2<f32> = u_xlat9;
    let x_377 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_376 + x_377);

    continuing {
      let x_379 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_379 + 1i);
    }
  }
  let x_381 : vec4<f32> = u_xlat4;
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_381 / x_382);
  let x_384 : vec3<f32> = u_xlat0;
  let x_386 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_384.x, x_384.x, x_384.x) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_390 : vec2<f32> = vs_TEXCOORD1;
  let x_393 : vec4<f32> = x_51.x_Grain_Params2;
  let x_397 : vec4<f32> = x_51.x_Grain_Params2;
  let x_399 : vec2<f32> = ((x_390 * vec2<f32>(x_393.x, x_393.y)) + vec2<f32>(x_397.z, x_397.w));
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_407.x, x_407.y));
  let x_410 : vec3<f32> = vec3<f32>(x_409.x, x_409.y, x_409.z);
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec3<f32> = u_xlat0;
  u_xlat2 = x_413;
  let x_414 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_414, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_418 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(x_418, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_424 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_424);
  let x_428 : f32 = x_51.x_Grain_Params1.x;
  let x_429 : f32 = u_xlat27;
  u_xlat27 = ((x_428 * -(x_429)) + 1.0f);
  let x_433 : vec3<f32> = u_xlat0;
  let x_434 : vec4<f32> = u_xlat1;
  let x_436 : vec3<f32> = (x_433 * vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat1;
  let x_442 : f32 = x_51.x_Grain_Params1.y;
  let x_444 : f32 = x_51.x_Grain_Params1.y;
  let x_446 : f32 = x_51.x_Grain_Params1.y;
  let x_448 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(x_442, x_444, x_446));
  let x_449 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : f32 = u_xlat27;
  let x_456 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_453, x_453, x_453)) + x_456);
  let x_458 : vec2<f32> = vs_TEXCOORD0;
  let x_460 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_464 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_466 : vec2<f32> = ((x_458 * vec2<f32>(x_460.x, x_460.y)) + vec2<f32>(x_464.z, x_464.w));
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
  let x_474 : vec4<f32> = u_xlat1;
  let x_476 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_474.x, x_474.y));
  u_xlat27 = x_476.w;
  let x_478 : f32 = u_xlat27;
  u_xlat27 = ((x_478 * 2.0f) + -1.0f);
  let x_481 : f32 = u_xlat27;
  u_xlat1.x = ((x_481 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_487 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_487, 0.0f, 1.0f);
  let x_491 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_491 * 2.0f) + -1.0f);
  let x_495 : f32 = u_xlat27;
  u_xlat27 = (-(abs(x_495)) + 1.0f);
  let x_499 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_499);
  let x_501 : f32 = u_xlat27;
  u_xlat27 = (-(x_501) + 1.0f);
  let x_504 : f32 = u_xlat27;
  let x_506 : f32 = u_xlat1.x;
  u_xlat27 = (x_504 * x_506);
  let x_508 : vec3<f32> = u_xlat0;
  let x_511 : vec3<f32> = (x_508 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_512 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_514), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_519 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_519);
  let x_521 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_521 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_525 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_525);
  let x_527 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_527 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_539 : vec3<f32> = u_xlat0;
  let x_542 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_539.x, x_539.y, x_539.z, x_539.x));
  u_xlatb0 = vec3<bool>(x_542.x, x_542.y, x_542.z);
  let x_545 : bool = u_xlatb0.x;
  if (x_545) {
    let x_550 : f32 = u_xlat1.x;
    x_546 = x_550;
  } else {
    let x_553 : f32 = u_xlat2.x;
    x_546 = x_553;
  }
  let x_554 : f32 = x_546;
  u_xlat0.x = x_554;
  let x_557 : bool = u_xlatb0.y;
  if (x_557) {
    let x_562 : f32 = u_xlat1.y;
    x_558 = x_562;
  } else {
    let x_565 : f32 = u_xlat2.y;
    x_558 = x_565;
  }
  let x_566 : f32 = x_558;
  u_xlat0.y = x_566;
  let x_569 : bool = u_xlatb0.z;
  if (x_569) {
    let x_574 : f32 = u_xlat1.z;
    x_570 = x_574;
  } else {
    let x_577 : f32 = u_xlat2.z;
    x_570 = x_577;
  }
  let x_578 : f32 = x_570;
  u_xlat0.z = x_578;
  let x_580 : f32 = u_xlat27;
  let x_585 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_580, x_580, x_580) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_585);
  let x_587 : vec3<f32> = u_xlat0;
  let x_590 : vec3<f32> = (x_587 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_591 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_593 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_597 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_597 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_601 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_601), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_604 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_604);
  let x_606 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_606 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_610 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_610);
  let x_614 : vec3<f32> = u_xlat0;
  let x_616 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_614.x, x_614.y, x_614.z, x_614.x));
  u_xlatb0 = vec3<bool>(x_616.x, x_616.y, x_616.z);
  let x_621 : bool = u_xlatb0.x;
  if (x_621) {
    let x_626 : f32 = u_xlat1.x;
    x_622 = x_626;
  } else {
    let x_629 : f32 = u_xlat2.x;
    x_622 = x_629;
  }
  let x_630 : f32 = x_622;
  SV_Target0.x = x_630;
  let x_634 : bool = u_xlatb0.y;
  if (x_634) {
    let x_639 : f32 = u_xlat1.y;
    x_635 = x_639;
  } else {
    let x_642 : f32 = u_xlat2.y;
    x_635 = x_642;
  }
  let x_643 : f32 = x_635;
  SV_Target0.y = x_643;
  let x_646 : bool = u_xlatb0.z;
  if (x_646) {
    let x_651 : f32 = u_xlat1.z;
    x_647 = x_651;
  } else {
    let x_654 : f32 = u_xlat2.z;
    x_647 = x_654;
  }
  let x_655 : f32 = x_647;
  SV_Target0.z = x_655;
  let x_658 : f32 = u_xlat1.w;
  SV_Target0.w = x_658;
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

