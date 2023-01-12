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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
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

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat14 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat9 : f32;
  var u_xlat15 : f32;
  var u_xlat21 : f32;
  var u_xlatb4 : bool;
  var u_xlatb2 : bool;
  var x_220 : f32;
  var u_xlat6 : f32;
  var u_xlat8 : f32;
  var u_xlatb9 : bool;
  var x_371 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_403 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat19 : f32;
  var u_xlat7 : vec3<f32>;
  var x_787 : f32;
  var u_xlat18 : f32;
  var x_1147 : f32;
  var x_1159 : f32;
  var x_1171 : f32;
  var x_1223 : f32;
  var x_1236 : f32;
  var x_1248 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_15 : vec2<f32> = vs_TEXCOORD1;
  phase0_Input0_1 = vec4<f32>(x_13.x, x_13.y, x_15.x, x_15.y);
  let x_23 : vec4<f32> = phase0_Input0_1;
  u_xlat0 = (x_23 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_28 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Distortion_Amount;
  u_xlat1 = ((x_28 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_32.x_Distortion_Amount;
  let x_50 : vec4<f32> = x_32.x_Distortion_CenterScale;
  u_xlat0 = ((x_43 * vec4<f32>(x_45.z, x_45.z, x_45.z, x_45.z)) + -(vec4<f32>(x_50.x, x_50.y, x_50.x, x_50.y)));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_32.x_Distortion_CenterScale;
  u_xlat0 = (x_54 * vec4<f32>(x_56.z, x_56.w, x_56.z, x_56.w));
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_71);
  let x_81 : f32 = x_32.x_Distortion_Amount.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_88 : vec3<f32> = u_xlat2;
    let x_91 : vec4<f32> = x_32.x_Distortion_Amount;
    u_xlat14 = (vec2<f32>(x_88.x, x_88.x) * vec2<f32>(x_91.x, x_91.y));
    let x_96 : f32 = u_xlat14.x;
    u_xlat3.x = sin(x_96);
    let x_101 : f32 = u_xlat14.x;
    u_xlat4.x = cos(x_101);
    let x_105 : f32 = u_xlat3.x;
    let x_107 : f32 = u_xlat4.x;
    u_xlat14.x = (x_105 / x_107);
    let x_114 : f32 = u_xlat14.y;
    u_xlat20 = (1.0f / x_114);
    let x_117 : f32 = u_xlat14.x;
    let x_118 : f32 = u_xlat20;
    u_xlat14.x = ((x_117 * x_118) + -1.0f);
    let x_123 : vec4<f32> = u_xlat0;
    let x_125 : vec2<f32> = u_xlat14;
    let x_128 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.x)) + vec2<f32>(x_128.x, x_128.y));
  } else {
    let x_133 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_133);
    let x_137 : f32 = u_xlat3.x;
    let x_139 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat3.x = (x_137 * x_139);
    let x_143 : f32 = u_xlat2.x;
    let x_145 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat2.x = (x_143 * x_145);
    let x_150 : f32 = u_xlat2.x;
    u_xlat9 = min(abs(x_150), 1.0f);
    let x_155 : f32 = u_xlat2.x;
    u_xlat15 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat15;
    u_xlat15 = (1.0f / x_158);
    let x_160 : f32 = u_xlat15;
    let x_161 : f32 = u_xlat9;
    u_xlat9 = (x_160 * x_161);
    let x_163 : f32 = u_xlat9;
    let x_164 : f32 = u_xlat9;
    u_xlat15 = (x_163 * x_164);
    let x_167 : f32 = u_xlat15;
    u_xlat21 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat15;
    let x_173 : f32 = u_xlat21;
    u_xlat21 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat15;
    let x_178 : f32 = u_xlat21;
    u_xlat21 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat15;
    let x_183 : f32 = u_xlat21;
    u_xlat15 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat15;
    let x_188 : f32 = u_xlat9;
    u_xlat21 = (x_187 * x_188);
    let x_192 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_192));
    let x_195 : f32 = u_xlat21;
    u_xlat21 = ((x_195 * -2.0f) + 1.570796371f);
    let x_200 : bool = u_xlatb4;
    let x_201 : f32 = u_xlat21;
    u_xlat21 = select(0.0f, x_201, x_200);
    let x_203 : f32 = u_xlat9;
    let x_204 : f32 = u_xlat15;
    let x_206 : f32 = u_xlat21;
    u_xlat9 = ((x_203 * x_204) + x_206);
    let x_209 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_209, 1.0f);
    let x_214 : f32 = u_xlat2.x;
    let x_216 : f32 = u_xlat2.x;
    u_xlatb2 = (x_214 < -(x_216));
    let x_219 : bool = u_xlatb2;
    if (x_219) {
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
    let x_260 : vec4<f32> = x_32.x_Distortion_Amount;
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
    let x_304 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat6 = (x_302 * x_304);
    let x_307 : f32 = u_xlat0.x;
    let x_309 : f32 = x_32.x_Distortion_Amount.y;
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
  let x_462 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_462.x, x_462.y, x_462.x, x_462.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_468 : f32 = x_32.x_Bloom_Settings.x;
  u_xlat2.x = (x_468 * 0.5f);
  let x_471 : vec4<f32> = u_xlat0;
  let x_473 : vec3<f32> = u_xlat2;
  let x_476 : vec2<f32> = u_xlat14;
  u_xlat3 = ((vec4<f32>(x_471.x, x_471.y, x_471.z, x_471.y) * vec4<f32>(x_473.x, x_473.x, x_473.x, x_473.x)) + vec4<f32>(x_476.x, x_476.y, x_476.x, x_476.y));
  let x_479 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_479, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_483 : vec4<f32> = u_xlat3;
  let x_486 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_520 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_544 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_541 * vec4<f32>(x_544.y, x_544.y, x_544.y, x_544.y));
  let x_547 : vec2<f32> = u_xlat14;
  let x_550 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_554 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_556 : vec2<f32> = ((x_547 * vec2<f32>(x_550.x, x_550.y)) + vec2<f32>(x_554.z, x_554.w));
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_556.x, x_556.y, x_557.z);
  let x_564 : vec3<f32> = u_xlat2;
  let x_566 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_564.x, x_564.y));
  let x_567 : vec3<f32> = vec3<f32>(x_566.x, x_566.y, x_566.z);
  let x_568 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat0;
  let x_574 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_575 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat3;
  let x_580 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_582 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_580.z, x_580.z, x_580.z));
  let x_583 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_585 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_589 : vec4<f32> = u_xlat0;
  let x_593 : vec3<f32> = x_32.x_Bloom_Color;
  let x_594 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) * x_593);
  let x_595 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_598 : f32 = u_xlat0.w;
  u_xlat5.w = (x_598 * 0.25f);
  let x_601 : vec4<f32> = u_xlat1;
  let x_602 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_601 + x_602);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  u_xlat1.w = 0.0f;
  let x_612 : vec4<f32> = u_xlat0;
  let x_613 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_612 + x_613);
  let x_618 : f32 = x_32.x_Vignette_Mode;
  u_xlatb1 = (x_618 < 0.5f);
  let x_620 : bool = u_xlatb1;
  if (x_620) {
    let x_623 : vec2<f32> = u_xlat14;
    let x_627 : vec2<f32> = x_32.x_Vignette_Center;
    let x_629 : vec2<f32> = (x_623 + -(x_627));
    let x_630 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
    let x_632 : vec4<f32> = u_xlat1;
    let x_637 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_639 : vec2<f32> = (abs(vec2<f32>(x_632.y, x_632.x)) * vec2<f32>(x_637.x, x_637.x));
    let x_640 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_640.x, x_639.x, x_639.y, x_640.w);
    let x_645 : f32 = x_32.x_ScreenParams.x;
    let x_647 : f32 = x_32.x_ScreenParams.y;
    u_xlat19 = (x_645 / x_647);
    let x_649 : f32 = u_xlat19;
    u_xlat19 = (x_649 + -1.0f);
    let x_652 : f32 = x_32.x_Vignette_Settings.w;
    let x_653 : f32 = u_xlat19;
    u_xlat19 = ((x_652 * x_653) + 1.0f);
    let x_656 : f32 = u_xlat19;
    let x_659 : f32 = u_xlat1.z;
    u_xlat1.x = (x_656 * x_659);
    let x_662 : vec4<f32> = u_xlat1;
    let x_663 : vec2<f32> = vec2<f32>(x_662.x, x_662.y);
    let x_664 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
    let x_666 : vec4<f32> = u_xlat1;
    let x_670 : vec2<f32> = clamp(vec2<f32>(x_666.x, x_666.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_671 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
    let x_673 : vec4<f32> = u_xlat1;
    let x_675 : vec2<f32> = log2(vec2<f32>(x_673.x, x_673.y));
    let x_676 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
    let x_678 : vec4<f32> = u_xlat1;
    let x_681 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_683 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(x_681.z, x_681.z));
    let x_684 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
    let x_686 : vec4<f32> = u_xlat1;
    let x_688 : vec2<f32> = exp2(vec2<f32>(x_686.x, x_686.y));
    let x_689 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
    let x_691 : vec4<f32> = u_xlat1;
    let x_693 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_691.x, x_691.y), vec2<f32>(x_693.x, x_693.y));
    let x_698 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_698) + 1.0f);
    let x_703 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_703, 0.0f);
    let x_707 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_707);
    let x_711 : f32 = u_xlat1.x;
    let x_713 : f32 = x_32.x_Vignette_Settings.y;
    u_xlat1.x = (x_711 * x_713);
    let x_717 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_717);
    let x_723 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = (-(x_723) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_727 : vec4<f32> = u_xlat1;
    let x_729 : vec3<f32> = u_xlat7;
    let x_732 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_727.x, x_727.x, x_727.x) * x_729) + x_732);
    let x_734 : vec4<f32> = u_xlat0;
    let x_736 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_734.x, x_734.y, x_734.z) * x_736);
    let x_739 : f32 = u_xlat0.w;
    u_xlat2.x = (x_739 + -1.0f);
    let x_743 : f32 = u_xlat1.x;
    let x_745 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_743 * x_745) + 1.0f);
  } else {
    let x_755 : vec2<f32> = u_xlat14;
    let x_756 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_755);
    u_xlat1.x = x_756.w;
    let x_760 : f32 = u_xlat1.x;
    u_xlat2.x = (x_760 * 0.077399381f);
    let x_765 : f32 = u_xlat1.x;
    u_xlat8 = (x_765 + 0.055f);
    let x_768 : f32 = u_xlat8;
    u_xlat8 = (x_768 * 0.947867334f);
    let x_771 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_771), 1.1920929e-07f);
    let x_775 : f32 = u_xlat8;
    u_xlat8 = log2(x_775);
    let x_777 : f32 = u_xlat8;
    u_xlat8 = (x_777 * 2.400000095f);
    let x_780 : f32 = u_xlat8;
    u_xlat8 = exp2(x_780);
    let x_784 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_784);
    let x_786 : bool = u_xlatb1;
    if (x_786) {
      let x_791 : f32 = u_xlat2.x;
      x_787 = x_791;
    } else {
      let x_793 : f32 = u_xlat8;
      x_787 = x_793;
    }
    let x_794 : f32 = x_787;
    u_xlat1.x = x_794;
    let x_797 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = (-(x_797) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_800 : vec4<f32> = u_xlat1;
    let x_802 : vec3<f32> = u_xlat2;
    let x_805 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_800.x, x_800.x, x_800.x) * x_802) + x_805);
    let x_807 : vec4<f32> = u_xlat0;
    let x_809 : vec3<f32> = u_xlat2;
    let x_811 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_807.x, x_807.y, x_807.z) * x_809) + -(vec3<f32>(x_811.x, x_811.y, x_811.z)));
    let x_817 : f32 = x_32.x_Vignette_Opacity;
    let x_819 : vec3<f32> = u_xlat2;
    let x_821 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_817, x_817, x_817) * x_819) + vec3<f32>(x_821.x, x_821.y, x_821.z));
    let x_825 : f32 = u_xlat0.w;
    u_xlat0.x = (x_825 + -1.0f);
    let x_829 : f32 = u_xlat1.x;
    let x_831 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_829 * x_831) + 1.0f);
  }
  let x_835 : vec4<f32> = phase0_Input0_1;
  let x_839 : vec4<f32> = x_32.x_Grain_Params2;
  let x_843 : vec4<f32> = x_32.x_Grain_Params2;
  let x_845 : vec2<f32> = ((vec2<f32>(x_835.z, x_835.w) * vec2<f32>(x_839.x, x_839.y)) + vec2<f32>(x_843.z, x_843.w));
  let x_846 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
  let x_853 : vec4<f32> = u_xlat0;
  let x_855 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_853.x, x_853.y));
  let x_856 : vec3<f32> = vec3<f32>(x_855.x, x_855.y, x_855.z);
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec3<f32> = u_xlat7;
  u_xlat2 = x_859;
  let x_860 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_860, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_865 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_865, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_871 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_871);
  let x_875 : f32 = x_32.x_Grain_Params1.x;
  let x_876 : f32 = u_xlat18;
  u_xlat18 = ((x_875 * -(x_876)) + 1.0f);
  let x_880 : vec4<f32> = u_xlat0;
  let x_882 : vec3<f32> = u_xlat7;
  let x_883 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * x_882);
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat0;
  let x_889 : f32 = x_32.x_Grain_Params1.y;
  let x_891 : f32 = x_32.x_Grain_Params1.y;
  let x_893 : f32 = x_32.x_Grain_Params1.y;
  let x_895 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(x_889, x_891, x_893));
  let x_896 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat0;
  let x_900 : f32 = u_xlat18;
  let x_903 : vec3<f32> = u_xlat7;
  let x_904 : vec3<f32> = ((vec3<f32>(x_898.x, x_898.y, x_898.z) * vec3<f32>(x_900, x_900, x_900)) + x_903);
  let x_905 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat3;
  let x_910 : f32 = x_32.x_PostExposure;
  let x_912 : f32 = x_32.x_PostExposure;
  let x_914 : f32 = x_32.x_PostExposure;
  let x_916 : f32 = x_32.x_PostExposure;
  let x_917 : vec4<f32> = vec4<f32>(x_910, x_912, x_914, x_916);
  u_xlat0 = (x_907 * vec4<f32>(x_917.x, x_917.y, x_917.z, x_917.w));
  let x_924 : vec4<f32> = u_xlat0;
  let x_931 : vec3<f32> = ((vec3<f32>(x_924.z, x_924.x, x_924.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_932 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat0;
  let x_936 : vec3<f32> = log2(vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec4<f32> = u_xlat0;
  let x_946 : vec3<f32> = ((vec3<f32>(x_939.x, x_939.y, x_939.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_947 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_949 : vec4<f32> = u_xlat0;
  let x_953 : vec3<f32> = clamp(vec3<f32>(x_949.x, x_949.y, x_949.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_954 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec4<f32> = u_xlat0;
  let x_960 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_962 : vec3<f32> = (vec3<f32>(x_956.x, x_956.y, x_956.z) * vec3<f32>(x_960.z, x_960.z, x_960.z));
  let x_963 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_966 : f32 = u_xlat1.x;
  u_xlat6 = floor(x_966);
  let x_969 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) * vec2<f32>(0.5f, 0.5f));
  let x_973 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_972.x, x_973.y, x_973.z, x_972.y);
  let x_975 : vec4<f32> = u_xlat1;
  let x_978 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_981 : vec4<f32> = u_xlat1;
  let x_983 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.z) * vec2<f32>(x_978.x, x_978.y)) + vec2<f32>(x_981.x, x_981.w));
  let x_984 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_984.x, x_983.x, x_983.y, x_984.w);
  let x_986 : f32 = u_xlat6;
  let x_988 : f32 = x_32.x_Lut2D_Params.y;
  let x_991 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_986 * x_988) + x_991);
  let x_999 : vec4<f32> = u_xlat1;
  let x_1001 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_999.x, x_999.z));
  u_xlat2 = vec3<f32>(x_1001.x, x_1001.y, x_1001.z);
  let x_1004 : f32 = x_32.x_Lut2D_Params.y;
  u_xlat3.x = x_1004;
  u_xlat3.y = 0.0f;
  let x_1007 : vec4<f32> = u_xlat1;
  let x_1009 : vec4<f32> = u_xlat3;
  let x_1011 : vec2<f32> = (vec2<f32>(x_1007.x, x_1007.z) + vec2<f32>(x_1009.x, x_1009.y));
  let x_1012 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
  let x_1017 : vec4<f32> = u_xlat1;
  let x_1019 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1017.x, x_1017.y));
  let x_1020 : vec3<f32> = vec3<f32>(x_1019.x, x_1019.y, x_1019.z);
  let x_1021 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1024 : f32 = u_xlat0.x;
  let x_1026 : f32 = x_32.x_Lut2D_Params.z;
  let x_1028 : f32 = u_xlat6;
  u_xlat0.x = ((x_1024 * x_1026) + -(x_1028));
  let x_1032 : vec3<f32> = u_xlat2;
  let x_1034 : vec4<f32> = u_xlat1;
  let x_1036 : vec3<f32> = (-(x_1032) + vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat0;
  let x_1041 : vec4<f32> = u_xlat1;
  let x_1044 : vec3<f32> = u_xlat2;
  let x_1045 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.x, x_1039.x) * vec3<f32>(x_1041.x, x_1041.y, x_1041.z)) + x_1044);
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1048 : vec4<f32> = phase0_Input0_1;
  let x_1052 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_1056 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_1058 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1052.x, x_1052.y)) + vec2<f32>(x_1056.z, x_1056.w));
  let x_1059 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
  let x_1066 : vec4<f32> = u_xlat1;
  let x_1068 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1066.x, x_1066.y));
  u_xlat1.x = x_1068.w;
  let x_1072 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1072 * 2.0f) + -1.0f);
  let x_1078 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_1078 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1084 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1084, 0.0f, 1.0f);
  let x_1088 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_1088 * 2.0f) + -1.0f);
  let x_1093 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1093)) + 1.0f);
  let x_1099 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1099);
  let x_1103 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1103) + 1.0f);
  let x_1108 : f32 = u_xlat1.x;
  let x_1110 : f32 = u_xlat7.x;
  u_xlat1.x = (x_1108 * x_1110);
  let x_1113 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1113.x, x_1113.y, x_1113.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1118 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1118.x, x_1118.y, x_1118.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1123 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1123);
  let x_1125 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1125 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1129 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1129);
  let x_1131 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1131 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1140 : vec4<f32> = u_xlat0;
  let x_1143 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.x));
  u_xlatb0 = vec3<bool>(x_1143.x, x_1143.y, x_1143.z);
  let x_1146 : bool = u_xlatb0.x;
  if (x_1146) {
    let x_1151 : f32 = u_xlat7.x;
    x_1147 = x_1151;
  } else {
    let x_1154 : f32 = u_xlat2.x;
    x_1147 = x_1154;
  }
  let x_1155 : f32 = x_1147;
  u_xlat0.x = x_1155;
  let x_1158 : bool = u_xlatb0.y;
  if (x_1158) {
    let x_1163 : f32 = u_xlat7.y;
    x_1159 = x_1163;
  } else {
    let x_1166 : f32 = u_xlat2.y;
    x_1159 = x_1166;
  }
  let x_1167 : f32 = x_1159;
  u_xlat0.y = x_1167;
  let x_1170 : bool = u_xlatb0.z;
  if (x_1170) {
    let x_1175 : f32 = u_xlat7.z;
    x_1171 = x_1175;
  } else {
    let x_1178 : f32 = u_xlat2.z;
    x_1171 = x_1178;
  }
  let x_1179 : f32 = x_1171;
  u_xlat0.z = x_1179;
  let x_1181 : vec4<f32> = u_xlat1;
  let x_1186 : vec4<f32> = u_xlat0;
  let x_1188 : vec3<f32> = ((vec3<f32>(x_1181.x, x_1181.x, x_1181.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec4<f32> = u_xlat0;
  let x_1194 : vec3<f32> = (vec3<f32>(x_1191.x, x_1191.y, x_1191.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1195 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1197 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1197.x, x_1197.y, x_1197.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1201 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1201 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1204 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1204), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1207 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1207);
  let x_1209 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1209 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1212 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1212);
  let x_1215 : vec4<f32> = u_xlat0;
  let x_1217 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1215.x));
  u_xlatb0 = vec3<bool>(x_1217.x, x_1217.y, x_1217.z);
  let x_1222 : bool = u_xlatb0.x;
  if (x_1222) {
    let x_1227 : f32 = u_xlat1.x;
    x_1223 = x_1227;
  } else {
    let x_1230 : f32 = u_xlat2.x;
    x_1223 = x_1230;
  }
  let x_1231 : f32 = x_1223;
  SV_Target0.x = x_1231;
  let x_1235 : bool = u_xlatb0.y;
  if (x_1235) {
    let x_1240 : f32 = u_xlat1.y;
    x_1236 = x_1240;
  } else {
    let x_1243 : f32 = u_xlat2.y;
    x_1236 = x_1243;
  }
  let x_1244 : f32 = x_1236;
  SV_Target0.y = x_1244;
  let x_1247 : bool = u_xlatb0.z;
  if (x_1247) {
    let x_1252 : f32 = u_xlat1.z;
    x_1248 = x_1252;
  } else {
    let x_1255 : f32 = u_xlat2.z;
    x_1248 = x_1255;
  }
  let x_1256 : f32 = x_1248;
  SV_Target0.z = x_1256;
  let x_1259 : f32 = u_xlat0.w;
  SV_Target0.w = x_1259;
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

