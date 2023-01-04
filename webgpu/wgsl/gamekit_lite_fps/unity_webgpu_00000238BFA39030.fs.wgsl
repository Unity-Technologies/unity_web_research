struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb2 : bool;

var<private> u_xlat6 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : f32;
  var x_371 : f32;
  var x_403 : f32;
  var x_782 : f32;
  var x_991 : f32;
  var x_1003 : f32;
  var x_1015 : f32;
  var x_1065 : f32;
  var x_1077 : f32;
  var x_1089 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_15 : vec2<f32> = vs_TEXCOORD1;
  phase0_Input0_1 = vec4<f32>(x_13.x, x_13.y, x_15.x, x_15.y);
  let x_22 : vec4<f32> = phase0_Input0_1;
  u_xlat0 = (x_22 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_27 : vec4<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Distortion_Amount;
  u_xlat1 = ((x_27 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_42 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_31.x_Distortion_Amount;
  let x_49 : vec4<f32> = x_31.x_Distortion_CenterScale;
  u_xlat0 = ((x_42 * vec4<f32>(x_44.z, x_44.z, x_44.z, x_44.z)) + -(vec4<f32>(x_49.x, x_49.y, x_49.x, x_49.y)));
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_31.x_Distortion_CenterScale;
  u_xlat0 = (x_53 * vec4<f32>(x_55.z, x_55.w, x_55.z, x_55.w));
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_70);
  let x_80 : f32 = x_31.x_Distortion_Amount.w;
  u_xlatb8 = (0.0f < x_80);
  let x_82 : bool = u_xlatb8;
  if (x_82) {
    let x_87 : vec3<f32> = u_xlat2;
    let x_90 : vec4<f32> = x_31.x_Distortion_Amount;
    u_xlat14 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat14.x;
    u_xlat3.x = sin(x_95);
    let x_100 : f32 = u_xlat14.x;
    u_xlat4.x = cos(x_100);
    let x_104 : f32 = u_xlat3.x;
    let x_106 : f32 = u_xlat4.x;
    u_xlat14.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat14.y;
    u_xlat20 = (1.0f / x_113);
    let x_116 : f32 = u_xlat14.x;
    let x_117 : f32 = u_xlat20;
    u_xlat14.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat14;
    let x_127 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + vec2<f32>(x_127.x, x_127.y));
  } else {
    let x_132 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_132);
    let x_136 : f32 = u_xlat3.x;
    let x_138 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat3.x = (x_136 * x_138);
    let x_142 : f32 = u_xlat2.x;
    let x_144 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat2.x = (x_142 * x_144);
    let x_149 : f32 = u_xlat2.x;
    u_xlat9 = min(abs(x_149), 1.0f);
    let x_154 : f32 = u_xlat2.x;
    u_xlat15 = max(abs(x_154), 1.0f);
    let x_157 : f32 = u_xlat15;
    u_xlat15 = (1.0f / x_157);
    let x_159 : f32 = u_xlat15;
    let x_160 : f32 = u_xlat9;
    u_xlat9 = (x_159 * x_160);
    let x_162 : f32 = u_xlat9;
    let x_163 : f32 = u_xlat9;
    u_xlat15 = (x_162 * x_163);
    let x_166 : f32 = u_xlat15;
    u_xlat21 = ((x_166 * 0.0208351f) + -0.085133001f);
    let x_171 : f32 = u_xlat15;
    let x_172 : f32 = u_xlat21;
    u_xlat21 = ((x_171 * x_172) + 0.180141002f);
    let x_176 : f32 = u_xlat15;
    let x_177 : f32 = u_xlat21;
    u_xlat21 = ((x_176 * x_177) + -0.330299497f);
    let x_181 : f32 = u_xlat15;
    let x_182 : f32 = u_xlat21;
    u_xlat15 = ((x_181 * x_182) + 0.999866009f);
    let x_186 : f32 = u_xlat15;
    let x_187 : f32 = u_xlat9;
    u_xlat21 = (x_186 * x_187);
    let x_191 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_191));
    let x_194 : f32 = u_xlat21;
    u_xlat21 = ((x_194 * -2.0f) + 1.570796371f);
    let x_199 : bool = u_xlatb4;
    let x_200 : f32 = u_xlat21;
    u_xlat21 = select(0.0f, x_200, x_199);
    let x_202 : f32 = u_xlat9;
    let x_203 : f32 = u_xlat15;
    let x_205 : f32 = u_xlat21;
    u_xlat9 = ((x_202 * x_203) + x_205);
    let x_208 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_208, 1.0f);
    let x_213 : f32 = u_xlat2.x;
    let x_215 : f32 = u_xlat2.x;
    u_xlatb2 = (x_213 < -(x_215));
    let x_218 : bool = u_xlatb2;
    if (x_218) {
      let x_223 : f32 = u_xlat9;
      x_220 = -(x_223);
    } else {
      let x_226 : f32 = u_xlat9;
      x_220 = x_226;
    }
    let x_227 : f32 = x_220;
    u_xlat2.x = x_227;
    let x_230 : f32 = u_xlat3.x;
    let x_232 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_230 * x_232) + -1.0f);
    let x_236 : vec4<f32> = u_xlat0;
    let x_238 : vec3<f32> = u_xlat2;
    let x_241 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_236.x, x_236.y) * vec2<f32>(x_238.x, x_238.x)) + vec2<f32>(x_241.x, x_241.y));
  }
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_244.z, x_244.w), vec2<f32>(x_246.z, x_246.w));
  let x_251 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_251);
  let x_254 : bool = u_xlatb8;
  if (x_254) {
    let x_257 : vec4<f32> = u_xlat0;
    let x_260 : vec4<f32> = x_31.x_Distortion_Amount;
    let x_262 : vec2<f32> = (vec2<f32>(x_257.x, x_257.x) * vec2<f32>(x_260.x, x_260.y));
    let x_263 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
    let x_266 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_266);
    let x_270 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_270);
    let x_275 : f32 = u_xlat1.x;
    let x_277 : f32 = u_xlat2.x;
    u_xlat6 = (x_275 / x_277);
    let x_280 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_280);
    let x_283 : f32 = u_xlat6;
    let x_285 : f32 = u_xlat1.x;
    u_xlat6 = ((x_283 * x_285) + -1.0f);
    let x_288 : vec4<f32> = u_xlat0;
    let x_290 : f32 = u_xlat6;
    let x_293 : vec4<f32> = u_xlat1;
    let x_295 : vec2<f32> = ((vec2<f32>(x_288.z, x_288.w) * vec2<f32>(x_290, x_290)) + vec2<f32>(x_293.z, x_293.w));
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  } else {
    let x_300 : f32 = u_xlat0.x;
    u_xlat6 = (1.0f / x_300);
    let x_302 : f32 = u_xlat6;
    let x_304 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat6 = (x_302 * x_304);
    let x_307 : f32 = u_xlat0.x;
    let x_309 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_307 * x_309);
    let x_313 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_313), 1.0f);
    let x_319 : f32 = u_xlat0.x;
    u_xlat8 = max(abs(x_319), 1.0f);
    let x_322 : f32 = u_xlat8;
    u_xlat8 = (1.0f / x_322);
    let x_324 : f32 = u_xlat8;
    let x_326 : f32 = u_xlat2.x;
    u_xlat2.x = (x_324 * x_326);
    let x_330 : f32 = u_xlat2.x;
    let x_332 : f32 = u_xlat2.x;
    u_xlat8 = (x_330 * x_332);
    let x_334 : f32 = u_xlat8;
    u_xlat3.x = ((x_334 * 0.0208351f) + -0.085133001f);
    let x_338 : f32 = u_xlat8;
    let x_340 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_338 * x_340) + 0.180141002f);
    let x_344 : f32 = u_xlat8;
    let x_346 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_344 * x_346) + -0.330299497f);
    let x_350 : f32 = u_xlat8;
    let x_352 : f32 = u_xlat3.x;
    u_xlat8 = ((x_350 * x_352) + 0.999866009f);
    let x_355 : f32 = u_xlat8;
    let x_357 : f32 = u_xlat2.x;
    u_xlat3.x = (x_355 * x_357);
    let x_362 : f32 = u_xlat0.x;
    u_xlatb9 = (1.0f < abs(x_362));
    let x_366 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_366 * -2.0f) + 1.570796371f);
    let x_370 : bool = u_xlatb9;
    if (x_370) {
      let x_375 : f32 = u_xlat3.x;
      x_371 = x_375;
    } else {
      x_371 = 0.0f;
    }
    let x_377 : f32 = x_371;
    u_xlat3.x = x_377;
    let x_380 : f32 = u_xlat2.x;
    let x_381 : f32 = u_xlat8;
    let x_384 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_380 * x_381) + x_384);
    let x_388 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_388, 1.0f);
    let x_395 : f32 = u_xlat0.x;
    let x_397 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_395 < -(x_397));
    let x_402 : bool = u_xlatb0.x;
    if (x_402) {
      let x_407 : f32 = u_xlat2.x;
      x_403 = -(x_407);
    } else {
      let x_411 : f32 = u_xlat2.x;
      x_403 = x_411;
    }
    let x_412 : f32 = x_403;
    u_xlat0.x = x_412;
    let x_414 : f32 = u_xlat6;
    let x_416 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_414 * x_416) + -1.0f);
    let x_420 : vec4<f32> = u_xlat0;
    let x_422 : vec4<f32> = u_xlat0;
    let x_425 : vec4<f32> = u_xlat1;
    let x_427 : vec2<f32> = ((vec2<f32>(x_420.z, x_420.w) * vec2<f32>(x_422.x, x_422.x)) + vec2<f32>(x_425.z, x_425.w));
    let x_428 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  }
  let x_440 : vec4<f32> = phase0_Input0_1;
  let x_442 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_440.x, x_440.y));
  u_xlat0.x = x_442.x;
  let x_450 : vec4<f32> = u_xlat1;
  let x_452 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_450.x, x_450.y));
  u_xlat1 = x_452;
  let x_453 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.x, x_453.x) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_462 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_462.x, x_462.y, x_462.x, x_462.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_468 : f32 = x_31.x_Bloom_Settings.x;
  u_xlat2.x = (x_468 * 0.5f);
  let x_471 : vec4<f32> = u_xlat0;
  let x_473 : vec3<f32> = u_xlat2;
  let x_476 : vec2<f32> = u_xlat14;
  u_xlat3 = ((vec4<f32>(x_471.x, x_471.y, x_471.z, x_471.y) * vec4<f32>(x_473.x, x_473.x, x_473.x, x_473.x)) + vec4<f32>(x_476.x, x_476.y, x_476.x, x_476.y));
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_479, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_483 : vec4<f32> = u_xlat3;
  let x_486 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_483 * vec4<f32>(x_486, x_486, x_486, x_486));
  let x_494 : vec4<f32> = u_xlat3;
  let x_496 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_494.x, x_494.y));
  u_xlat4 = x_496;
  let x_500 : vec4<f32> = u_xlat3;
  let x_502 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_500.z, x_500.w));
  u_xlat3 = x_502;
  let x_503 : vec4<f32> = u_xlat3;
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_503 + x_504);
  let x_506 : vec4<f32> = u_xlat0;
  let x_508 : vec3<f32> = u_xlat2;
  let x_511 : vec2<f32> = u_xlat14;
  u_xlat0 = ((vec4<f32>(x_506.x, x_506.w, x_506.z, x_506.w) * vec4<f32>(x_508.x, x_508.x, x_508.x, x_508.x)) + vec4<f32>(x_511.x, x_511.y, x_511.x, x_511.y));
  let x_514 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_514, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat0 = (x_518 * vec4<f32>(x_520, x_520, x_520, x_520));
  let x_526 : vec4<f32> = u_xlat0;
  let x_528 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_526.x, x_526.y));
  u_xlat4 = x_528;
  let x_529 : vec4<f32> = u_xlat3;
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_529 + x_530);
  let x_535 : vec4<f32> = u_xlat0;
  let x_537 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_535.z, x_535.w));
  u_xlat0 = x_537;
  let x_538 : vec4<f32> = u_xlat0;
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_538 + x_539);
  let x_541 : vec4<f32> = u_xlat0;
  let x_544 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_541 * vec4<f32>(x_544.y, x_544.y, x_544.y, x_544.y));
  let x_547 : vec2<f32> = u_xlat14;
  let x_550 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_554 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_556 : vec2<f32> = ((x_547 * vec2<f32>(x_550.x, x_550.y)) + vec2<f32>(x_554.z, x_554.w));
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_556.x, x_556.y, x_557.z);
  let x_564 : vec3<f32> = u_xlat2;
  let x_566 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_564.x, x_564.y));
  let x_567 : vec3<f32> = vec3<f32>(x_566.x, x_566.y, x_566.z);
  let x_568 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_570 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_574 : vec4<f32> = u_xlat3;
  let x_577 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_579 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_577.z, x_577.z, x_577.z));
  let x_580 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  u_xlat3.w = 0.0f;
  let x_583 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_583 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_587 : vec4<f32> = u_xlat0;
  let x_591 : vec3<f32> = x_31.x_Bloom_Color;
  let x_592 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) * x_591);
  let x_593 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : f32 = u_xlat0.w;
  u_xlat5.w = (x_596 * 0.25f);
  let x_599 : vec4<f32> = u_xlat1;
  let x_600 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_599 + x_600);
  let x_602 : vec4<f32> = u_xlat3;
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_602 * x_603) + x_605);
  let x_610 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1 = (x_610 < 0.5f);
  let x_612 : bool = u_xlatb1;
  if (x_612) {
    let x_615 : vec2<f32> = u_xlat14;
    let x_619 : vec2<f32> = x_31.x_Vignette_Center;
    let x_621 : vec2<f32> = (x_615 + -(x_619));
    let x_622 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
    let x_624 : vec4<f32> = u_xlat1;
    let x_629 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_631 : vec2<f32> = (abs(vec2<f32>(x_624.y, x_624.x)) * vec2<f32>(x_629.x, x_629.x));
    let x_632 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_632.x, x_631.x, x_631.y, x_632.w);
    let x_637 : f32 = x_31.x_ScreenParams.x;
    let x_639 : f32 = x_31.x_ScreenParams.y;
    u_xlat19 = (x_637 / x_639);
    let x_641 : f32 = u_xlat19;
    u_xlat19 = (x_641 + -1.0f);
    let x_644 : f32 = x_31.x_Vignette_Settings.w;
    let x_645 : f32 = u_xlat19;
    u_xlat19 = ((x_644 * x_645) + 1.0f);
    let x_648 : f32 = u_xlat19;
    let x_651 : f32 = u_xlat1.z;
    u_xlat1.x = (x_648 * x_651);
    let x_654 : vec4<f32> = u_xlat1;
    let x_655 : vec2<f32> = vec2<f32>(x_654.x, x_654.y);
    let x_656 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
    let x_658 : vec4<f32> = u_xlat1;
    let x_662 : vec2<f32> = clamp(vec2<f32>(x_658.x, x_658.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_663 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
    let x_665 : vec4<f32> = u_xlat1;
    let x_667 : vec2<f32> = log2(vec2<f32>(x_665.x, x_665.y));
    let x_668 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
    let x_670 : vec4<f32> = u_xlat1;
    let x_673 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_675 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) * vec2<f32>(x_673.z, x_673.z));
    let x_676 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
    let x_678 : vec4<f32> = u_xlat1;
    let x_680 : vec2<f32> = exp2(vec2<f32>(x_678.x, x_678.y));
    let x_681 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
    let x_683 : vec4<f32> = u_xlat1;
    let x_685 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_683.x, x_683.y), vec2<f32>(x_685.x, x_685.y));
    let x_690 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_690) + 1.0f);
    let x_695 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_695, 0.0f);
    let x_699 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_699);
    let x_703 : f32 = u_xlat1.x;
    let x_705 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat1.x = (x_703 * x_705);
    let x_709 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_709);
    let x_715 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_715) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_719 : vec4<f32> = u_xlat1;
    let x_721 : vec3<f32> = u_xlat7;
    let x_724 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_719.x, x_719.x, x_719.x) * x_721) + x_724);
    let x_726 : vec4<f32> = u_xlat0;
    let x_728 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_726.x, x_726.y, x_726.z) * x_728);
    let x_731 : f32 = u_xlat0.w;
    u_xlat2.x = (x_731 + -1.0f);
    let x_737 : f32 = u_xlat1.x;
    let x_739 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_737 * x_739) + 1.0f);
  } else {
    let x_750 : vec2<f32> = u_xlat14;
    let x_751 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_750);
    u_xlat1.x = x_751.w;
    let x_755 : f32 = u_xlat1.x;
    u_xlat2.x = (x_755 * 0.077399381f);
    let x_760 : f32 = u_xlat1.x;
    u_xlat8 = (x_760 + 0.055f);
    let x_763 : f32 = u_xlat8;
    u_xlat8 = (x_763 * 0.947867334f);
    let x_766 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_766), 1.1920929e-07f);
    let x_770 : f32 = u_xlat8;
    u_xlat8 = log2(x_770);
    let x_772 : f32 = u_xlat8;
    u_xlat8 = (x_772 * 2.400000095f);
    let x_775 : f32 = u_xlat8;
    u_xlat8 = exp2(x_775);
    let x_779 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_779);
    let x_781 : bool = u_xlatb1;
    if (x_781) {
      let x_786 : f32 = u_xlat2.x;
      x_782 = x_786;
    } else {
      let x_788 : f32 = u_xlat8;
      x_782 = x_788;
    }
    let x_789 : f32 = x_782;
    u_xlat1.x = x_789;
    let x_792 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_792) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_795 : vec4<f32> = u_xlat1;
    let x_797 : vec3<f32> = u_xlat2;
    let x_800 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_795.x, x_795.x, x_795.x) * x_797) + x_800);
    let x_802 : vec4<f32> = u_xlat0;
    let x_804 : vec3<f32> = u_xlat2;
    let x_806 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_802.x, x_802.y, x_802.z) * x_804) + -(vec3<f32>(x_806.x, x_806.y, x_806.z)));
    let x_812 : f32 = x_31.x_Vignette_Opacity;
    let x_814 : vec3<f32> = u_xlat2;
    let x_816 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_812, x_812, x_812) * x_814) + vec3<f32>(x_816.x, x_816.y, x_816.z));
    let x_820 : f32 = u_xlat0.w;
    u_xlat0.x = (x_820 + -1.0f);
    let x_824 : f32 = u_xlat1.x;
    let x_826 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_824 * x_826) + 1.0f);
  }
  let x_830 : vec4<f32> = phase0_Input0_1;
  let x_834 : vec4<f32> = x_31.x_Grain_Params2;
  let x_838 : vec4<f32> = x_31.x_Grain_Params2;
  let x_840 : vec2<f32> = ((vec2<f32>(x_830.z, x_830.w) * vec2<f32>(x_834.x, x_834.y)) + vec2<f32>(x_838.z, x_838.w));
  let x_841 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
  let x_848 : vec4<f32> = u_xlat0;
  let x_850 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_848.x, x_848.y));
  let x_851 : vec3<f32> = vec3<f32>(x_850.x, x_850.y, x_850.z);
  let x_852 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec3<f32> = u_xlat7;
  u_xlat2 = x_854;
  let x_855 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_855, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_860 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_860, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_866 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_866);
  let x_870 : f32 = x_31.x_Grain_Params1.x;
  let x_871 : f32 = u_xlat18;
  u_xlat18 = ((x_870 * -(x_871)) + 1.0f);
  let x_875 : vec4<f32> = u_xlat0;
  let x_877 : vec3<f32> = u_xlat7;
  let x_878 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) * x_877);
  let x_879 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec4<f32> = u_xlat0;
  let x_884 : f32 = x_31.x_Grain_Params1.y;
  let x_886 : f32 = x_31.x_Grain_Params1.y;
  let x_888 : f32 = x_31.x_Grain_Params1.y;
  let x_890 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) * vec3<f32>(x_884, x_886, x_888));
  let x_891 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat0;
  let x_895 : f32 = u_xlat18;
  let x_898 : vec3<f32> = u_xlat7;
  let x_899 : vec3<f32> = ((vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(x_895, x_895, x_895)) + x_898);
  let x_900 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = phase0_Input0_1;
  let x_906 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_910 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_912 : vec2<f32> = ((vec2<f32>(x_902.x, x_902.y) * vec2<f32>(x_906.x, x_906.y)) + vec2<f32>(x_910.z, x_910.w));
  let x_913 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
  let x_920 : vec4<f32> = u_xlat1;
  let x_922 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_920.x, x_920.y));
  u_xlat18 = x_922.w;
  let x_924 : f32 = u_xlat18;
  u_xlat18 = ((x_924 * 2.0f) + -1.0f);
  let x_928 : f32 = u_xlat18;
  u_xlat1.x = ((x_928 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_934 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_934, 0.0f, 1.0f);
  let x_938 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_938 * 2.0f) + -1.0f);
  let x_942 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_942)) + 1.0f);
  let x_946 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_946);
  let x_948 : f32 = u_xlat18;
  u_xlat18 = (-(x_948) + 1.0f);
  let x_951 : f32 = u_xlat18;
  let x_953 : f32 = u_xlat1.x;
  u_xlat18 = (x_951 * x_953);
  let x_955 : vec4<f32> = u_xlat0;
  let x_959 : vec3<f32> = (vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_960 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_962.x, x_962.y, x_962.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_967 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_967);
  let x_969 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_969 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_973 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_973);
  let x_975 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_975 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_984 : vec4<f32> = u_xlat0;
  let x_987 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_984.x, x_984.y, x_984.z, x_984.x));
  u_xlatb0 = vec3<bool>(x_987.x, x_987.y, x_987.z);
  let x_990 : bool = u_xlatb0.x;
  if (x_990) {
    let x_995 : f32 = u_xlat1.x;
    x_991 = x_995;
  } else {
    let x_998 : f32 = u_xlat2.x;
    x_991 = x_998;
  }
  let x_999 : f32 = x_991;
  u_xlat0.x = x_999;
  let x_1002 : bool = u_xlatb0.y;
  if (x_1002) {
    let x_1007 : f32 = u_xlat1.y;
    x_1003 = x_1007;
  } else {
    let x_1010 : f32 = u_xlat2.y;
    x_1003 = x_1010;
  }
  let x_1011 : f32 = x_1003;
  u_xlat0.y = x_1011;
  let x_1014 : bool = u_xlatb0.z;
  if (x_1014) {
    let x_1019 : f32 = u_xlat1.z;
    x_1015 = x_1019;
  } else {
    let x_1022 : f32 = u_xlat2.z;
    x_1015 = x_1022;
  }
  let x_1023 : f32 = x_1015;
  u_xlat0.z = x_1023;
  let x_1025 : f32 = u_xlat18;
  let x_1030 : vec4<f32> = u_xlat0;
  let x_1032 : vec3<f32> = ((vec3<f32>(x_1025, x_1025, x_1025) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat0;
  let x_1038 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1039 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1041.x, x_1041.y, x_1041.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1045 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1045 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1048 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1048), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1051 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1051);
  let x_1053 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1053 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1056 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1056);
  let x_1059 : vec4<f32> = u_xlat0;
  let x_1061 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1059.x));
  u_xlatb0 = vec3<bool>(x_1061.x, x_1061.y, x_1061.z);
  let x_1064 : bool = u_xlatb0.x;
  if (x_1064) {
    let x_1069 : f32 = u_xlat1.x;
    x_1065 = x_1069;
  } else {
    let x_1072 : f32 = u_xlat2.x;
    x_1065 = x_1072;
  }
  let x_1073 : f32 = x_1065;
  SV_Target0.x = x_1073;
  let x_1076 : bool = u_xlatb0.y;
  if (x_1076) {
    let x_1081 : f32 = u_xlat1.y;
    x_1077 = x_1081;
  } else {
    let x_1084 : f32 = u_xlat2.y;
    x_1077 = x_1084;
  }
  let x_1085 : f32 = x_1077;
  SV_Target0.y = x_1085;
  let x_1088 : bool = u_xlatb0.z;
  if (x_1088) {
    let x_1093 : f32 = u_xlat1.z;
    x_1089 = x_1093;
  } else {
    let x_1096 : f32 = u_xlat2.z;
    x_1089 = x_1096;
  }
  let x_1097 : f32 = x_1089;
  SV_Target0.z = x_1097;
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

