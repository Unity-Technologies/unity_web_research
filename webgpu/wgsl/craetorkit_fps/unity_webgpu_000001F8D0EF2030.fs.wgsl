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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(14) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var x_1016 : f32;
  var x_1028 : f32;
  var x_1040 : f32;
  var x_1114 : f32;
  var x_1127 : f32;
  var x_1139 : f32;
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
  u_xlat0 = (vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_587 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_587 * 0.5f);
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec4<f32> = u_xlat1;
  let x_595 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_590.x, x_590.y, x_590.z, x_590.y) * vec4<f32>(x_592.x, x_592.x, x_592.x, x_592.x)) + vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y));
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_598, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_602 : vec4<f32> = u_xlat3;
  let x_604 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_602 * vec4<f32>(x_604, x_604, x_604, x_604));
  let x_612 : vec4<f32> = u_xlat3;
  let x_614 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_612.x, x_612.y));
  u_xlat4 = x_614;
  let x_618 : vec4<f32> = u_xlat3;
  let x_620 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_618.z, x_618.w));
  u_xlat3 = x_620;
  let x_621 : vec4<f32> = u_xlat3;
  let x_622 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_621 + x_622);
  let x_624 : vec4<f32> = u_xlat0;
  let x_626 : vec4<f32> = u_xlat1;
  let x_629 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_624.x, x_624.w, x_624.z, x_624.w) * vec4<f32>(x_626.x, x_626.x, x_626.x, x_626.x)) + vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y));
  let x_632 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_632, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_636 : vec4<f32> = u_xlat0;
  let x_638 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_636 * vec4<f32>(x_638, x_638, x_638, x_638));
  let x_644 : vec4<f32> = u_xlat0;
  let x_646 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_644.x, x_644.y));
  u_xlat4 = x_646;
  let x_647 : vec4<f32> = u_xlat3;
  let x_648 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_647 + x_648);
  let x_653 : vec4<f32> = u_xlat0;
  let x_655 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_653.z, x_653.w));
  u_xlat0 = x_655;
  let x_656 : vec4<f32> = u_xlat0;
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_656 + x_657);
  let x_659 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_659 * vec4<f32>(x_662.y, x_662.y, x_662.y, x_662.y));
  let x_665 : vec2<f32> = u_xlat21;
  let x_668 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_672 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_674 : vec2<f32> = ((x_665 * vec2<f32>(x_668.x, x_668.y)) + vec2<f32>(x_672.z, x_672.w));
  let x_675 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
  let x_682 : vec4<f32> = u_xlat1;
  let x_684 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_682.x, x_682.y));
  let x_685 : vec3<f32> = vec3<f32>(x_684.x, x_684.y, x_684.z);
  let x_686 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat0;
  let x_692 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_693 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat1;
  let x_698 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_700 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(x_698.z, x_698.z, x_698.z));
  let x_701 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_703 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_706 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = x_26.x_Bloom_Color;
  let x_711 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) * x_710);
  let x_712 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_715 : f32 = u_xlat0.w;
  u_xlat4.w = (x_715 * 0.25f);
  let x_718 : vec4<f32> = u_xlat2;
  let x_719 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_718 + x_719);
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec4<f32> = u_xlat1;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  u_xlat1.w = 0.0f;
  let x_729 : vec4<f32> = u_xlat0;
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_729 + x_730);
  let x_733 : vec2<f32> = vs_TEXCOORD1;
  let x_736 : vec4<f32> = x_26.x_Grain_Params2;
  let x_740 : vec4<f32> = x_26.x_Grain_Params2;
  let x_742 : vec2<f32> = ((x_733 * vec2<f32>(x_736.x, x_736.y)) + vec2<f32>(x_740.z, x_740.w));
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_742.y, x_743.z, x_743.w);
  let x_750 : vec4<f32> = u_xlat1;
  let x_752 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_750.x, x_750.y));
  let x_753 : vec3<f32> = vec3<f32>(x_752.x, x_752.y, x_752.z);
  let x_754 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat0;
  let x_757 : vec3<f32> = vec3<f32>(x_756.x, x_756.y, x_756.z);
  let x_758 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat2;
  let x_764 : vec3<f32> = clamp(vec3<f32>(x_760.x, x_760.y, x_760.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_767.x, x_767.y, x_767.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_774 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_774);
  let x_778 : f32 = x_26.x_Grain_Params1.x;
  let x_779 : f32 = u_xlat31;
  u_xlat31 = ((x_778 * -(x_779)) + 1.0f);
  let x_783 : vec4<f32> = u_xlat0;
  let x_785 : vec4<f32> = u_xlat1;
  let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat1;
  let x_793 : f32 = x_26.x_Grain_Params1.y;
  let x_795 : f32 = x_26.x_Grain_Params1.y;
  let x_797 : f32 = x_26.x_Grain_Params1.y;
  let x_799 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(x_793, x_795, x_797));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : f32 = u_xlat31;
  let x_807 : vec4<f32> = u_xlat0;
  let x_809 : vec3<f32> = ((vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(x_804, x_804, x_804)) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec4<f32> = u_xlat0;
  let x_815 : f32 = x_26.x_PostExposure;
  let x_817 : f32 = x_26.x_PostExposure;
  let x_819 : f32 = x_26.x_PostExposure;
  let x_821 : f32 = x_26.x_PostExposure;
  let x_822 : vec4<f32> = vec4<f32>(x_815, x_817, x_819, x_821);
  u_xlat0 = (x_812 * vec4<f32>(x_822.x, x_822.y, x_822.z, x_822.w));
  let x_829 : vec4<f32> = u_xlat0;
  let x_836 : vec3<f32> = ((vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_837 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat0;
  let x_841 : vec3<f32> = log2(vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat0;
  let x_851 : vec3<f32> = ((vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_852 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_858 : vec3<f32> = clamp(vec3<f32>(x_854.x, x_854.y, x_854.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat0;
  let x_866 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_868 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(x_866.y, x_866.y, x_866.y));
  let x_869 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_872 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_872 * 0.5f);
  let x_875 : vec4<f32> = u_xlat0;
  let x_878 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_881 : vec4<f32> = u_xlat1;
  let x_883 : vec3<f32> = ((vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(x_878.x, x_878.x, x_878.x)) + vec3<f32>(x_881.x, x_881.x, x_881.x));
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_894 : vec4<f32> = u_xlat0;
  let x_896 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : vec3<f32> = vec3<f32>(x_896.x, x_896.y, x_896.z);
  let x_898 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec2<f32> = vs_TEXCOORD0;
  let x_902 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_906 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_908 : vec2<f32> = ((x_900 * vec2<f32>(x_902.x, x_902.y)) + vec2<f32>(x_906.z, x_906.w));
  let x_909 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
  let x_916 : vec4<f32> = u_xlat1;
  let x_918 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_916.x, x_916.y));
  u_xlat1.x = x_918.w;
  let x_922 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_922 * 2.0f) + -1.0f);
  let x_929 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_929 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_935 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_935, 0.0f, 1.0f);
  let x_939 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_939 * 2.0f) + -1.0f);
  let x_944 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_944)) + 1.0f);
  let x_950 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_950);
  let x_954 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_954) + 1.0f);
  let x_959 : f32 = u_xlat1.x;
  let x_961 : f32 = u_xlat11.x;
  u_xlat1.x = (x_959 * x_961);
  let x_964 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_969 : vec4<f32> = u_xlat0;
  let x_974 : vec3<f32> = max(abs(vec3<f32>(x_969.x, x_969.y, x_969.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_975 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = u_xlat2;
  let x_979 : vec3<f32> = log2(vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat2;
  let x_986 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_987 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = exp2(vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat2;
  let x_1001 : vec3<f32> = ((vec3<f32>(x_994.x, x_994.y, x_994.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1002 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1009 : vec4<f32> = u_xlat0;
  let x_1012 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1009.x));
  u_xlatb0 = vec3<bool>(x_1012.x, x_1012.y, x_1012.z);
  let x_1015 : bool = u_xlatb0.x;
  if (x_1015) {
    let x_1020 : f32 = u_xlat11.x;
    x_1016 = x_1020;
  } else {
    let x_1023 : f32 = u_xlat2.x;
    x_1016 = x_1023;
  }
  let x_1024 : f32 = x_1016;
  u_xlat0.x = x_1024;
  let x_1027 : bool = u_xlatb0.y;
  if (x_1027) {
    let x_1032 : f32 = u_xlat11.y;
    x_1028 = x_1032;
  } else {
    let x_1035 : f32 = u_xlat2.y;
    x_1028 = x_1035;
  }
  let x_1036 : f32 = x_1028;
  u_xlat0.y = x_1036;
  let x_1039 : bool = u_xlatb0.z;
  if (x_1039) {
    let x_1044 : f32 = u_xlat11.z;
    x_1040 = x_1044;
  } else {
    let x_1047 : f32 = u_xlat2.z;
    x_1040 = x_1047;
  }
  let x_1048 : f32 = x_1040;
  u_xlat0.z = x_1048;
  let x_1050 : vec4<f32> = u_xlat1;
  let x_1055 : vec4<f32> = u_xlat0;
  let x_1057 : vec3<f32> = ((vec3<f32>(x_1050.x, x_1050.x, x_1050.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec4<f32> = u_xlat0;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1065 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1067 : vec4<f32> = u_xlat0;
  let x_1071 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.y, x_1067.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1072 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec4<f32> = u_xlat2;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1079 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat2;
  let x_1084 : vec3<f32> = max(abs(vec3<f32>(x_1081.x, x_1081.y, x_1081.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1085 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
  let x_1087 : vec4<f32> = u_xlat2;
  let x_1089 : vec3<f32> = log2(vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat2;
  let x_1096 : vec3<f32> = (vec3<f32>(x_1092.x, x_1092.y, x_1092.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1097 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec4<f32> = u_xlat2;
  let x_1101 : vec3<f32> = exp2(vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1106 : vec4<f32> = u_xlat0;
  let x_1108 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1106.x));
  u_xlatb0 = vec3<bool>(x_1108.x, x_1108.y, x_1108.z);
  let x_1113 : bool = u_xlatb0.x;
  if (x_1113) {
    let x_1118 : f32 = u_xlat1.x;
    x_1114 = x_1118;
  } else {
    let x_1121 : f32 = u_xlat2.x;
    x_1114 = x_1121;
  }
  let x_1122 : f32 = x_1114;
  SV_Target0.x = x_1122;
  let x_1126 : bool = u_xlatb0.y;
  if (x_1126) {
    let x_1131 : f32 = u_xlat1.y;
    x_1127 = x_1131;
  } else {
    let x_1134 : f32 = u_xlat2.y;
    x_1127 = x_1134;
  }
  let x_1135 : f32 = x_1127;
  SV_Target0.y = x_1135;
  let x_1138 : bool = u_xlatb0.z;
  if (x_1138) {
    let x_1143 : f32 = u_xlat1.z;
    x_1139 = x_1143;
  } else {
    let x_1146 : f32 = u_xlat2.z;
    x_1139 = x_1146;
  }
  let x_1147 : f32 = x_1139;
  SV_Target0.z = x_1147;
  let x_1150 : f32 = u_xlat0.w;
  SV_Target0.w = x_1150;
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

