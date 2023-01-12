struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb11 : bool;
  var u_xlat21 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat12 : f32;
  var u_xlat22 : vec2<f32>;
  var u_xlat32 : f32;
  var u_xlatb3 : bool;
  var u_xlatb1 : bool;
  var x_229 : f32;
  var u_xlat10 : vec2<f32>;
  var u_xlat30 : f32;
  var u_xlati30 : i32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat9 : f32;
  var u_xlat37 : f32;
  var u_xlat18 : f32;
  var u_xlat28 : f32;
  var u_xlat38 : f32;
  var u_xlatb9 : bool;
  var u_xlatb36 : bool;
  var x_509 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_1059 : f32;
  var x_1071 : f32;
  var x_1083 : f32;
  var x_1157 : f32;
  var x_1170 : f32;
  var x_1182 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat20 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_48.x, x_48.y, x_49.z, x_49.w);
  let x_51 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_80);
  let x_82 : bool = u_xlatb11;
  if (x_82) {
    let x_86 : vec4<f32> = u_xlat1;
    let x_89 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
    let x_94 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_94);
    let x_99 : f32 = u_xlat21.x;
    u_xlat3.x = cos(x_99);
    let x_103 : f32 = u_xlat2.x;
    let x_105 : f32 = u_xlat3.x;
    u_xlat21.x = (x_103 / x_105);
    let x_112 : f32 = u_xlat21.y;
    u_xlat31 = (1.0f / x_112);
    let x_115 : f32 = u_xlat21.x;
    let x_116 : f32 = u_xlat31;
    u_xlat21.x = ((x_115 * x_116) + -1.0f);
    let x_121 : vec4<f32> = u_xlat0;
    let x_123 : vec2<f32> = u_xlat21;
    let x_126 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.x)) + x_126);
  } else {
    let x_130 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_130);
    let x_134 : f32 = u_xlat2.x;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat2.x = (x_134 * x_136);
    let x_140 : f32 = u_xlat1.x;
    let x_142 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_140 * x_142);
    let x_147 : f32 = u_xlat1.x;
    u_xlat12 = min(abs(x_147), 1.0f);
    let x_152 : f32 = u_xlat1.x;
    u_xlat22.x = max(abs(x_152), 1.0f);
    let x_157 : f32 = u_xlat22.x;
    u_xlat22.x = (1.0f / x_157);
    let x_161 : f32 = u_xlat22.x;
    let x_162 : f32 = u_xlat12;
    u_xlat12 = (x_161 * x_162);
    let x_164 : f32 = u_xlat12;
    let x_165 : f32 = u_xlat12;
    u_xlat22.x = (x_164 * x_165);
    let x_170 : f32 = u_xlat22.x;
    u_xlat32 = ((x_170 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat22.x;
    let x_177 : f32 = u_xlat32;
    u_xlat32 = ((x_176 * x_177) + 0.180141002f);
    let x_182 : f32 = u_xlat22.x;
    let x_183 : f32 = u_xlat32;
    u_xlat32 = ((x_182 * x_183) + -0.330299497f);
    let x_188 : f32 = u_xlat22.x;
    let x_189 : f32 = u_xlat32;
    u_xlat22.x = ((x_188 * x_189) + 0.999866009f);
    let x_195 : f32 = u_xlat22.x;
    let x_196 : f32 = u_xlat12;
    u_xlat32 = (x_195 * x_196);
    let x_200 : f32 = u_xlat1.x;
    u_xlatb3 = (1.0f < abs(x_200));
    let x_203 : f32 = u_xlat32;
    u_xlat32 = ((x_203 * -2.0f) + 1.570796371f);
    let x_208 : bool = u_xlatb3;
    let x_209 : f32 = u_xlat32;
    u_xlat32 = select(0.0f, x_209, x_208);
    let x_211 : f32 = u_xlat12;
    let x_213 : f32 = u_xlat22.x;
    let x_215 : f32 = u_xlat32;
    u_xlat12 = ((x_211 * x_213) + x_215);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
      let x_232 : f32 = u_xlat12;
      x_229 = -(x_232);
    } else {
      let x_235 : f32 = u_xlat12;
      x_229 = x_235;
    }
    let x_236 : f32 = x_229;
    u_xlat1.x = x_236;
    let x_239 : f32 = u_xlat2.x;
    let x_241 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_239 * x_241) + -1.0f);
    let x_245 : vec4<f32> = u_xlat0;
    let x_247 : vec4<f32> = u_xlat1;
    let x_250 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_245.x, x_245.y) * vec2<f32>(x_247.x, x_247.x)) + x_250);
  }
  let x_262 : vec2<f32> = vs_TEXCOORD0;
  let x_263 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_262);
  u_xlat0.x = x_263.x;
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_267 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_274 : vec2<f32> = u_xlat10;
  let x_275 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_274, x_275);
  let x_277 : f32 = u_xlat30;
  let x_279 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_277, x_277) * x_279);
  let x_281 : vec2<f32> = u_xlat10;
  let x_284 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_286 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_287 : vec2<f32> = vec2<f32>(x_284, x_286);
  u_xlat10 = (x_281 * vec2<f32>(x_287.x, x_287.y));
  let x_292 : vec2<f32> = u_xlat10;
  let x_296 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_298 : vec2<f32> = (-(x_292) * vec2<f32>(x_296.z, x_296.w));
  let x_299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_298.x, x_298.y, x_299.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec2<f32> = (vec2<f32>(x_301.x, x_301.y) * vec2<f32>(0.5f, 0.5f));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_304.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_306.x, x_306.y), vec2<f32>(x_308.x, x_308.y));
  let x_311 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_311);
  let x_315 : f32 = u_xlat30;
  u_xlati30 = i32(x_315);
  let x_317 : i32 = u_xlati30;
  u_xlati30 = max(x_317, 3i);
  let x_320 : i32 = u_xlati30;
  u_xlati30 = min(x_320, 16i);
  let x_323 : i32 = u_xlati30;
  u_xlat1.x = f32(x_323);
  let x_326 : vec2<f32> = u_xlat10;
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_326) / vec2<f32>(x_328.x, x_328.x));
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
  let x_344 : vec2<f32> = vs_TEXCOORD0;
  u_xlat22 = x_344;
  u_xlati_loop_1 = 0i;
  loop {
    let x_352 : i32 = u_xlati_loop_1;
    let x_353 : i32 = u_xlati30;
    if ((x_352 < x_353)) {
    } else {
      break;
    }
    let x_356 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_356);
    let x_360 : f32 = u_xlat16.x;
    u_xlat16.x = (x_360 + 0.5f);
    let x_364 : f32 = u_xlat16.x;
    let x_366 : f32 = u_xlat1.x;
    u_xlat2.x = (x_364 / x_366);
    let x_369 : vec2<f32> = u_xlat22;
    u_xlat16 = (x_369 + vec2<f32>(-0.5f, -0.5f));
    let x_372 : vec2<f32> = u_xlat16;
    let x_374 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_377 : vec2<f32> = ((x_372 * vec2<f32>(x_374.z, x_374.z)) + vec2<f32>(0.5f, 0.5f));
    let x_378 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
    let x_380 : vec2<f32> = u_xlat16;
    let x_382 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_386 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = ((x_380 * vec2<f32>(x_382.z, x_382.z)) + -(vec2<f32>(x_386.x, x_386.y)));
    let x_390 : vec2<f32> = u_xlat16;
    let x_392 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = (x_390 * vec2<f32>(x_392.z, x_392.w));
    let x_396 : vec2<f32> = u_xlat16;
    let x_397 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_396, x_397);
    let x_399 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_399);
    let x_401 : bool = u_xlatb11;
    if (x_401) {
      let x_405 : f32 = u_xlat36;
      let x_408 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_405, x_405) * vec2<f32>(x_408.x, x_408.y));
      let x_413 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_413);
      let x_417 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_417);
      let x_419 : f32 = u_xlat8;
      let x_420 : f32 = u_xlat9;
      u_xlat27.x = (x_419 / x_420);
      let x_425 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_425);
      let x_428 : f32 = u_xlat27.x;
      let x_429 : f32 = u_xlat37;
      u_xlat27.x = ((x_428 * x_429) + -1.0f);
      let x_433 : vec2<f32> = u_xlat16;
      let x_434 : vec2<f32> = u_xlat27;
      let x_437 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_433 * vec2<f32>(x_434.x, x_434.x)) + vec2<f32>(x_437.x, x_437.y));
    } else {
      let x_441 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_441);
      let x_443 : f32 = u_xlat8;
      let x_445 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat8 = (x_443 * x_445);
      let x_447 : f32 = u_xlat36;
      let x_449 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_447 * x_449);
      let x_452 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_452), 1.0f);
      let x_456 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_456), 1.0f);
      let x_459 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_459);
      let x_461 : f32 = u_xlat28;
      let x_462 : f32 = u_xlat18;
      u_xlat18 = (x_461 * x_462);
      let x_464 : f32 = u_xlat18;
      let x_465 : f32 = u_xlat18;
      u_xlat28 = (x_464 * x_465);
      let x_468 : f32 = u_xlat28;
      u_xlat38 = ((x_468 * 0.0208351f) + -0.085133001f);
      let x_471 : f32 = u_xlat28;
      let x_472 : f32 = u_xlat38;
      u_xlat38 = ((x_471 * x_472) + 0.180141002f);
      let x_475 : f32 = u_xlat28;
      let x_476 : f32 = u_xlat38;
      u_xlat38 = ((x_475 * x_476) + -0.330299497f);
      let x_479 : f32 = u_xlat28;
      let x_480 : f32 = u_xlat38;
      u_xlat28 = ((x_479 * x_480) + 0.999866009f);
      let x_483 : f32 = u_xlat28;
      let x_484 : f32 = u_xlat18;
      u_xlat38 = (x_483 * x_484);
      let x_487 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_487));
      let x_490 : f32 = u_xlat38;
      u_xlat38 = ((x_490 * -2.0f) + 1.570796371f);
      let x_493 : bool = u_xlatb9;
      let x_494 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_494, x_493);
      let x_496 : f32 = u_xlat18;
      let x_497 : f32 = u_xlat28;
      let x_499 : f32 = u_xlat38;
      u_xlat18 = ((x_496 * x_497) + x_499);
      let x_501 : f32 = u_xlat36;
      u_xlat36 = min(x_501, 1.0f);
      let x_504 : f32 = u_xlat36;
      let x_505 : f32 = u_xlat36;
      u_xlatb36 = (x_504 < -(x_505));
      let x_508 : bool = u_xlatb36;
      if (x_508) {
        let x_512 : f32 = u_xlat18;
        x_509 = -(x_512);
      } else {
        let x_515 : f32 = u_xlat18;
        x_509 = x_515;
      }
      let x_516 : f32 = x_509;
      u_xlat36 = x_516;
      let x_517 : f32 = u_xlat8;
      let x_518 : f32 = u_xlat36;
      u_xlat36 = ((x_517 * x_518) + -1.0f);
      let x_521 : vec2<f32> = u_xlat16;
      let x_522 : f32 = u_xlat36;
      let x_525 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_521 * vec2<f32>(x_522, x_522)) + vec2<f32>(x_525.x, x_525.y));
    }
    let x_528 : vec2<f32> = u_xlat27;
    u_xlat27 = x_528;
    let x_529 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_529, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_533 : vec2<f32> = u_xlat27;
    let x_535 : f32 = x_26.x_RenderViewportScaleFactor;
    u_xlat16 = (x_533 * vec2<f32>(x_535, x_535));
    let x_543 : vec2<f32> = u_xlat16;
    let x_544 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_543, 0.0f);
    u_xlat7 = x_544;
    let x_550 : vec4<f32> = u_xlat2;
    let x_552 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_550.x, x_550.y), 0.0f);
    let x_553 : vec3<f32> = vec3<f32>(x_552.x, x_552.y, x_552.z);
    let x_554 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
    let x_556 : vec4<f32> = u_xlat7;
    let x_557 : vec4<f32> = u_xlat3;
    let x_559 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_556 * x_557) + x_559);
    let x_561 : vec4<f32> = u_xlat3;
    let x_562 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_561 + x_562);
    let x_564 : vec2<f32> = u_xlat10;
    let x_565 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_564 + x_565);

    continuing {
      let x_567 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_567 + 1i);
    }
  }
  let x_569 : vec4<f32> = u_xlat4;
  let x_570 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_569 / x_570);
  let x_572 : vec4<f32> = u_xlat0;
  let x_574 : vec4<f32> = u_xlat2;
  let x_576 : vec3<f32> = (vec3<f32>(x_572.x, x_572.x, x_572.x) * vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_581 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_585 : vec4<f32> = u_xlat0;
  let x_591 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_594 : vec2<f32> = u_xlat21;
  u_xlat3 = ((-(vec4<f32>(x_585.x, x_585.y, x_585.w, x_585.y)) * vec4<f32>(x_591.x, x_591.x, x_591.x, x_591.x)) + vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y));
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_597, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_601 : vec4<f32> = u_xlat3;
  let x_603 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_601 * vec4<f32>(x_603, x_603, x_603, x_603));
  let x_611 : vec4<f32> = u_xlat3;
  let x_613 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_611.x, x_611.y));
  u_xlat4 = x_613;
  let x_617 : vec4<f32> = u_xlat3;
  let x_619 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_617.z, x_617.w));
  u_xlat3 = x_619;
  let x_620 : vec4<f32> = u_xlat3;
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_620 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_623);
  let x_625 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_632 : vec2<f32> = u_xlat21;
  let x_633 : vec2<f32> = ((-(vec2<f32>(x_625.z, x_625.y)) * vec2<f32>(x_629.x, x_629.x)) + x_632);
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat1;
  let x_640 : vec2<f32> = clamp(vec2<f32>(x_636.x, x_636.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_641 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat1;
  let x_646 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_648 : vec2<f32> = (vec2<f32>(x_643.x, x_643.y) * vec2<f32>(x_646, x_646));
  let x_649 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
  let x_654 : vec4<f32> = u_xlat1;
  let x_656 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_654.x, x_654.y));
  u_xlat4 = x_656;
  let x_657 : vec4<f32> = u_xlat3;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_657 + x_658);
  let x_660 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_666 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_660.z, x_660.w, x_660.x, x_660.w) * vec4<f32>(x_663.x, x_663.x, x_663.x, x_663.x)) + vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y));
  let x_669 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_669, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_673 * vec4<f32>(x_675, x_675, x_675, x_675));
  let x_681 : vec4<f32> = u_xlat4;
  let x_683 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_681.x, x_681.y));
  u_xlat5 = x_683;
  let x_684 : vec4<f32> = u_xlat5;
  let x_686 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_684 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_686);
  let x_688 : vec2<f32> = u_xlat21;
  let x_689 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat1;
  let x_695 : vec2<f32> = clamp(vec2<f32>(x_691.x, x_691.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_696 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat1;
  let x_701 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_703 : vec2<f32> = (vec2<f32>(x_698.x, x_698.y) * vec2<f32>(x_701, x_701));
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_704.w);
  let x_709 : vec4<f32> = u_xlat1;
  let x_711 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_709.x, x_709.y));
  u_xlat5 = x_711;
  let x_712 : vec4<f32> = u_xlat5;
  let x_716 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_712 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_716);
  let x_721 : vec4<f32> = u_xlat4;
  let x_723 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_721.z, x_721.w));
  u_xlat4 = x_723;
  let x_724 : vec4<f32> = u_xlat4;
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_724 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_726);
  let x_728 : vec4<f32> = u_xlat0;
  let x_731 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_734 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_728.z, x_728.y, x_728.w, x_728.y) * vec4<f32>(x_731.x, x_731.x, x_731.x, x_731.x)) + vec4<f32>(x_734.x, x_734.y, x_734.x, x_734.y));
  let x_737 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_737, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_741 : vec4<f32> = u_xlat4;
  let x_743 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_741 * vec4<f32>(x_743, x_743, x_743, x_743));
  let x_749 : vec4<f32> = u_xlat4;
  let x_751 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_749.x, x_749.y));
  u_xlat5 = x_751;
  let x_752 : vec4<f32> = u_xlat3;
  let x_753 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_752 + x_753);
  let x_758 : vec4<f32> = u_xlat4;
  let x_760 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_758.z, x_758.w));
  u_xlat4 = x_760;
  let x_761 : vec4<f32> = u_xlat4;
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_761 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_763);
  let x_765 : vec4<f32> = u_xlat0;
  let x_768 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_771 : vec2<f32> = u_xlat21;
  let x_772 : vec2<f32> = ((vec2<f32>(x_765.x, x_765.y) * vec2<f32>(x_768.x, x_768.x)) + x_771);
  let x_773 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat0;
  let x_779 : vec2<f32> = clamp(vec2<f32>(x_775.x, x_775.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_780 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat0;
  let x_785 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_787 : vec2<f32> = (vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785, x_785));
  let x_788 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_795 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_793.x, x_793.y));
  u_xlat0 = x_795;
  let x_796 : vec4<f32> = u_xlat0;
  let x_797 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_796 + x_797);
  let x_799 : vec4<f32> = u_xlat0;
  let x_801 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_799 * vec4<f32>(x_801.y, x_801.y, x_801.y, x_801.y));
  let x_804 : vec2<f32> = u_xlat21;
  let x_807 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_811 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_813 : vec2<f32> = ((x_804 * vec2<f32>(x_807.x, x_807.y)) + vec2<f32>(x_811.z, x_811.w));
  let x_814 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_821.x, x_821.y));
  let x_824 : vec3<f32> = vec3<f32>(x_823.x, x_823.y, x_823.z);
  let x_825 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_827 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_831 : vec4<f32> = u_xlat1;
  let x_834 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_836 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) * vec3<f32>(x_834.z, x_834.z, x_834.z));
  let x_837 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  u_xlat1.w = 0.0f;
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_840 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_843 : vec4<f32> = u_xlat0;
  let x_847 : vec3<f32> = x_26.x_Bloom_Color;
  let x_848 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) * x_847);
  let x_849 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_852 : f32 = u_xlat0.w;
  u_xlat4.w = (x_852 * 0.0625f);
  let x_855 : vec4<f32> = u_xlat2;
  let x_856 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_855 + x_856);
  let x_858 : vec4<f32> = u_xlat1;
  let x_859 : vec4<f32> = u_xlat3;
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_858 * x_859) + x_861);
  let x_864 : vec2<f32> = vs_TEXCOORD1;
  let x_867 : vec4<f32> = x_26.x_Grain_Params2;
  let x_871 : vec4<f32> = x_26.x_Grain_Params2;
  let x_873 : vec2<f32> = ((x_864 * vec2<f32>(x_867.x, x_867.y)) + vec2<f32>(x_871.z, x_871.w));
  let x_874 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
  let x_881 : vec4<f32> = u_xlat1;
  let x_883 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_881.x, x_881.y));
  let x_884 : vec3<f32> = vec3<f32>(x_883.x, x_883.y, x_883.z);
  let x_885 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat0;
  let x_888 : vec3<f32> = vec3<f32>(x_887.x, x_887.y, x_887.z);
  let x_889 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat2;
  let x_895 : vec3<f32> = clamp(vec3<f32>(x_891.x, x_891.y, x_891.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_896 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_905 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_905);
  let x_909 : f32 = x_26.x_Grain_Params1.x;
  let x_910 : f32 = u_xlat31;
  u_xlat31 = ((x_909 * -(x_910)) + 1.0f);
  let x_914 : vec4<f32> = u_xlat0;
  let x_916 : vec4<f32> = u_xlat1;
  let x_918 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec4<f32> = u_xlat1;
  let x_924 : f32 = x_26.x_Grain_Params1.y;
  let x_926 : f32 = x_26.x_Grain_Params1.y;
  let x_928 : f32 = x_26.x_Grain_Params1.y;
  let x_930 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(x_924, x_926, x_928));
  let x_931 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat1;
  let x_935 : f32 = u_xlat31;
  let x_938 : vec4<f32> = u_xlat0;
  let x_940 : vec3<f32> = ((vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(x_935, x_935, x_935)) + vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec2<f32> = vs_TEXCOORD0;
  let x_945 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_949 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_951 : vec2<f32> = ((x_943 * vec2<f32>(x_945.x, x_945.y)) + vec2<f32>(x_949.z, x_949.w));
  let x_952 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_951.x, x_951.y, x_952.z, x_952.w);
  let x_959 : vec4<f32> = u_xlat1;
  let x_961 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_959.x, x_959.y));
  u_xlat1.x = x_961.w;
  let x_965 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_965 * 2.0f) + -1.0f);
  let x_972 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_972 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_978 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_978, 0.0f, 1.0f);
  let x_982 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_982 * 2.0f) + -1.0f);
  let x_987 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_987)) + 1.0f);
  let x_993 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_993);
  let x_997 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_997) + 1.0f);
  let x_1002 : f32 = u_xlat1.x;
  let x_1004 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1002 * x_1004);
  let x_1007 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1012 : vec4<f32> = u_xlat0;
  let x_1017 : vec3<f32> = max(abs(vec3<f32>(x_1012.x, x_1012.y, x_1012.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : vec3<f32> = log2(vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : vec4<f32> = u_xlat2;
  let x_1029 : vec3<f32> = (vec3<f32>(x_1025.x, x_1025.y, x_1025.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1030 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat2;
  let x_1034 : vec3<f32> = exp2(vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat2;
  let x_1044 : vec3<f32> = ((vec3<f32>(x_1037.x, x_1037.y, x_1037.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1045 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1052 : vec4<f32> = u_xlat0;
  let x_1055 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1052.x));
  u_xlatb0 = vec3<bool>(x_1055.x, x_1055.y, x_1055.z);
  let x_1058 : bool = u_xlatb0.x;
  if (x_1058) {
    let x_1063 : f32 = u_xlat11.x;
    x_1059 = x_1063;
  } else {
    let x_1066 : f32 = u_xlat2.x;
    x_1059 = x_1066;
  }
  let x_1067 : f32 = x_1059;
  u_xlat0.x = x_1067;
  let x_1070 : bool = u_xlatb0.y;
  if (x_1070) {
    let x_1075 : f32 = u_xlat11.y;
    x_1071 = x_1075;
  } else {
    let x_1078 : f32 = u_xlat2.y;
    x_1071 = x_1078;
  }
  let x_1079 : f32 = x_1071;
  u_xlat0.y = x_1079;
  let x_1082 : bool = u_xlatb0.z;
  if (x_1082) {
    let x_1087 : f32 = u_xlat11.z;
    x_1083 = x_1087;
  } else {
    let x_1090 : f32 = u_xlat2.z;
    x_1083 = x_1090;
  }
  let x_1091 : f32 = x_1083;
  u_xlat0.z = x_1091;
  let x_1093 : vec4<f32> = u_xlat1;
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = ((vec3<f32>(x_1093.x, x_1093.x, x_1093.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat0;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec4<f32> = u_xlat0;
  let x_1114 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat2;
  let x_1121 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.y, x_1117.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1122 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1124 : vec4<f32> = u_xlat2;
  let x_1127 : vec3<f32> = max(abs(vec3<f32>(x_1124.x, x_1124.y, x_1124.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1128 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec4<f32> = u_xlat2;
  let x_1132 : vec3<f32> = log2(vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec4<f32> = u_xlat2;
  let x_1139 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1140 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : vec4<f32> = u_xlat2;
  let x_1144 : vec3<f32> = exp2(vec3<f32>(x_1142.x, x_1142.y, x_1142.z));
  let x_1145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1149 : vec4<f32> = u_xlat0;
  let x_1151 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1149.x));
  u_xlatb0 = vec3<bool>(x_1151.x, x_1151.y, x_1151.z);
  let x_1156 : bool = u_xlatb0.x;
  if (x_1156) {
    let x_1161 : f32 = u_xlat1.x;
    x_1157 = x_1161;
  } else {
    let x_1164 : f32 = u_xlat2.x;
    x_1157 = x_1164;
  }
  let x_1165 : f32 = x_1157;
  SV_Target0.x = x_1165;
  let x_1169 : bool = u_xlatb0.y;
  if (x_1169) {
    let x_1174 : f32 = u_xlat1.y;
    x_1170 = x_1174;
  } else {
    let x_1177 : f32 = u_xlat2.y;
    x_1170 = x_1177;
  }
  let x_1178 : f32 = x_1170;
  SV_Target0.y = x_1178;
  let x_1181 : bool = u_xlatb0.z;
  if (x_1181) {
    let x_1186 : f32 = u_xlat1.z;
    x_1182 = x_1186;
  } else {
    let x_1189 : f32 = u_xlat2.z;
    x_1182 = x_1189;
  }
  let x_1190 : f32 = x_1182;
  SV_Target0.z = x_1190;
  let x_1193 : f32 = u_xlat0.w;
  SV_Target0.w = x_1193;
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

