struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
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
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb2 : bool;

var<private> u_xlat5 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlatb8 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : f32;
  var x_371 : f32;
  var x_399 : f32;
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
  u_xlatb7 = (0.0f < x_80);
  let x_82 : bool = u_xlatb7;
  if (x_82) {
    let x_87 : vec3<f32> = u_xlat2;
    let x_90 : vec4<f32> = x_31.x_Distortion_Amount;
    u_xlat12 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_95);
    let x_100 : f32 = u_xlat12.x;
    u_xlat4.x = cos(x_100);
    let x_104 : f32 = u_xlat3.x;
    let x_106 : f32 = u_xlat4.x;
    u_xlat12.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_113);
    let x_116 : f32 = u_xlat12.x;
    let x_117 : f32 = u_xlat17;
    u_xlat12.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat12;
    let x_127 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + vec2<f32>(x_127.x, x_127.y));
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
    u_xlat8 = min(abs(x_149), 1.0f);
    let x_154 : f32 = u_xlat2.x;
    u_xlat13 = max(abs(x_154), 1.0f);
    let x_157 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_157);
    let x_159 : f32 = u_xlat13;
    let x_160 : f32 = u_xlat8;
    u_xlat8 = (x_159 * x_160);
    let x_162 : f32 = u_xlat8;
    let x_163 : f32 = u_xlat8;
    u_xlat13 = (x_162 * x_163);
    let x_166 : f32 = u_xlat13;
    u_xlat18 = ((x_166 * 0.0208351f) + -0.085133001f);
    let x_171 : f32 = u_xlat13;
    let x_172 : f32 = u_xlat18;
    u_xlat18 = ((x_171 * x_172) + 0.180141002f);
    let x_176 : f32 = u_xlat13;
    let x_177 : f32 = u_xlat18;
    u_xlat18 = ((x_176 * x_177) + -0.330299497f);
    let x_181 : f32 = u_xlat13;
    let x_182 : f32 = u_xlat18;
    u_xlat13 = ((x_181 * x_182) + 0.999866009f);
    let x_186 : f32 = u_xlat13;
    let x_187 : f32 = u_xlat8;
    u_xlat18 = (x_186 * x_187);
    let x_191 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_191));
    let x_194 : f32 = u_xlat18;
    u_xlat18 = ((x_194 * -2.0f) + 1.570796371f);
    let x_199 : bool = u_xlatb4;
    let x_200 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_200, x_199);
    let x_202 : f32 = u_xlat8;
    let x_203 : f32 = u_xlat13;
    let x_205 : f32 = u_xlat18;
    u_xlat8 = ((x_202 * x_203) + x_205);
    let x_208 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_208, 1.0f);
    let x_213 : f32 = u_xlat2.x;
    let x_215 : f32 = u_xlat2.x;
    u_xlatb2 = (x_213 < -(x_215));
    let x_218 : bool = u_xlatb2;
    if (x_218) {
      let x_223 : f32 = u_xlat8;
      x_220 = -(x_223);
    } else {
      let x_226 : f32 = u_xlat8;
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
    u_xlat12 = ((vec2<f32>(x_236.x, x_236.y) * vec2<f32>(x_238.x, x_238.x)) + vec2<f32>(x_241.x, x_241.y));
  }
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_244.z, x_244.w), vec2<f32>(x_246.z, x_246.w));
  let x_251 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_251);
  let x_254 : bool = u_xlatb7;
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
    u_xlat5 = (x_275 / x_277);
    let x_280 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_280);
    let x_283 : f32 = u_xlat5;
    let x_285 : f32 = u_xlat1.x;
    u_xlat5 = ((x_283 * x_285) + -1.0f);
    let x_288 : vec4<f32> = u_xlat0;
    let x_290 : f32 = u_xlat5;
    let x_293 : vec4<f32> = u_xlat1;
    let x_295 : vec2<f32> = ((vec2<f32>(x_288.z, x_288.w) * vec2<f32>(x_290, x_290)) + vec2<f32>(x_293.z, x_293.w));
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  } else {
    let x_300 : f32 = u_xlat0.x;
    u_xlat5 = (1.0f / x_300);
    let x_302 : f32 = u_xlat5;
    let x_304 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5 = (x_302 * x_304);
    let x_307 : f32 = u_xlat0.x;
    let x_309 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_307 * x_309);
    let x_313 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_313), 1.0f);
    let x_319 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_319), 1.0f);
    let x_322 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_322);
    let x_324 : f32 = u_xlat7;
    let x_326 : f32 = u_xlat2.x;
    u_xlat2.x = (x_324 * x_326);
    let x_330 : f32 = u_xlat2.x;
    let x_332 : f32 = u_xlat2.x;
    u_xlat7 = (x_330 * x_332);
    let x_334 : f32 = u_xlat7;
    u_xlat3.x = ((x_334 * 0.0208351f) + -0.085133001f);
    let x_338 : f32 = u_xlat7;
    let x_340 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_338 * x_340) + 0.180141002f);
    let x_344 : f32 = u_xlat7;
    let x_346 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_344 * x_346) + -0.330299497f);
    let x_350 : f32 = u_xlat7;
    let x_352 : f32 = u_xlat3.x;
    u_xlat7 = ((x_350 * x_352) + 0.999866009f);
    let x_355 : f32 = u_xlat7;
    let x_357 : f32 = u_xlat2.x;
    u_xlat3.x = (x_355 * x_357);
    let x_362 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_362));
    let x_366 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_366 * -2.0f) + 1.570796371f);
    let x_370 : bool = u_xlatb8;
    if (x_370) {
      let x_375 : f32 = u_xlat3.x;
      x_371 = x_375;
    } else {
      x_371 = 0.0f;
    }
    let x_377 : f32 = x_371;
    u_xlat3.x = x_377;
    let x_380 : f32 = u_xlat2.x;
    let x_381 : f32 = u_xlat7;
    let x_384 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_380 * x_381) + x_384);
    let x_388 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_388, 1.0f);
    let x_393 : f32 = u_xlat0.x;
    let x_395 : f32 = u_xlat0.x;
    u_xlatb0 = (x_393 < -(x_395));
    let x_398 : bool = u_xlatb0;
    if (x_398) {
      let x_403 : f32 = u_xlat2.x;
      x_399 = -(x_403);
    } else {
      let x_407 : f32 = u_xlat2.x;
      x_399 = x_407;
    }
    let x_408 : f32 = x_399;
    u_xlat0.x = x_408;
    let x_410 : f32 = u_xlat5;
    let x_412 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_410 * x_412) + -1.0f);
    let x_416 : vec4<f32> = u_xlat0;
    let x_418 : vec4<f32> = u_xlat0;
    let x_421 : vec4<f32> = u_xlat1;
    let x_423 : vec2<f32> = ((vec2<f32>(x_416.z, x_416.w) * vec2<f32>(x_418.x, x_418.x)) + vec2<f32>(x_421.z, x_421.w));
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  }
  let x_436 : vec4<f32> = phase0_Input0_1;
  let x_438 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_436.x, x_436.y));
  u_xlat0.x = x_438.x;
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_446.x, x_446.y));
  u_xlat1 = x_448;
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.x, x_449.x) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_458 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_458.x, x_458.y, x_458.x, x_458.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_464 : f32 = x_31.x_Bloom_Settings.x;
  u_xlat2.x = (x_464 * 0.5f);
  let x_467 : vec4<f32> = u_xlat0;
  let x_469 : vec3<f32> = u_xlat2;
  let x_472 : vec2<f32> = u_xlat12;
  u_xlat3 = ((vec4<f32>(x_467.x, x_467.y, x_467.z, x_467.y) * vec4<f32>(x_469.x, x_469.x, x_469.x, x_469.x)) + vec4<f32>(x_472.x, x_472.y, x_472.x, x_472.y));
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_475, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_479 : vec4<f32> = u_xlat3;
  let x_482 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_479 * vec4<f32>(x_482, x_482, x_482, x_482));
  let x_490 : vec4<f32> = u_xlat3;
  let x_492 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_490.x, x_490.y));
  u_xlat4 = x_492;
  let x_496 : vec4<f32> = u_xlat3;
  let x_498 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_496.z, x_496.w));
  u_xlat3 = x_498;
  let x_499 : vec4<f32> = u_xlat3;
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_499 + x_500);
  let x_502 : vec4<f32> = u_xlat0;
  let x_504 : vec3<f32> = u_xlat2;
  let x_507 : vec2<f32> = u_xlat12;
  u_xlat0 = ((vec4<f32>(x_502.x, x_502.w, x_502.z, x_502.w) * vec4<f32>(x_504.x, x_504.x, x_504.x, x_504.x)) + vec4<f32>(x_507.x, x_507.y, x_507.x, x_507.y));
  let x_510 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_510, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_514 : vec4<f32> = u_xlat0;
  let x_516 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat0 = (x_514 * vec4<f32>(x_516, x_516, x_516, x_516));
  let x_522 : vec4<f32> = u_xlat0;
  let x_524 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_522.x, x_522.y));
  u_xlat4 = x_524;
  let x_525 : vec4<f32> = u_xlat3;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_525 + x_526);
  let x_531 : vec4<f32> = u_xlat0;
  let x_533 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_531.z, x_531.w));
  u_xlat0 = x_533;
  let x_534 : vec4<f32> = u_xlat0;
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_534 + x_535);
  let x_537 : vec4<f32> = u_xlat0;
  let x_540 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_537 * vec4<f32>(x_540.y, x_540.y, x_540.y, x_540.y));
  let x_543 : vec2<f32> = u_xlat12;
  let x_546 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_550 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_552 : vec2<f32> = ((x_543 * vec2<f32>(x_546.x, x_546.y)) + vec2<f32>(x_550.z, x_550.w));
  let x_553 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_552.x, x_552.y, x_553.z);
  let x_560 : vec3<f32> = u_xlat2;
  let x_562 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_560.x, x_560.y));
  u_xlat2 = vec3<f32>(x_562.x, x_562.y, x_562.z);
  let x_564 : vec4<f32> = u_xlat0;
  let x_568 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_569 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec3<f32> = u_xlat2;
  let x_573 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat2 = (x_571 * vec3<f32>(x_573.z, x_573.z, x_573.z));
  let x_576 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_576 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_579 : vec4<f32> = u_xlat0;
  let x_583 : vec3<f32> = x_31.x_Bloom_Color;
  let x_584 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) * x_583);
  let x_585 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_588 : f32 = u_xlat0.w;
  u_xlat4.w = (x_588 * 0.25f);
  let x_591 : vec4<f32> = u_xlat1;
  let x_592 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_591 + x_592);
  let x_594 : vec4<f32> = u_xlat3;
  let x_596 : vec3<f32> = u_xlat2;
  let x_597 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) * x_596);
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  u_xlat1.w = 0.0f;
  let x_601 : vec4<f32> = u_xlat0;
  let x_602 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_601 + x_602);
  let x_604 : vec4<f32> = u_xlat0;
  let x_607 : f32 = x_31.x_PostExposure;
  let x_609 : f32 = x_31.x_PostExposure;
  let x_611 : f32 = x_31.x_PostExposure;
  let x_613 : f32 = x_31.x_PostExposure;
  let x_614 : vec4<f32> = vec4<f32>(x_607, x_609, x_611, x_613);
  u_xlat0 = (x_604 * vec4<f32>(x_614.x, x_614.y, x_614.z, x_614.w));
  let x_621 : vec4<f32> = u_xlat0;
  let x_628 : vec3<f32> = ((vec3<f32>(x_621.z, x_621.x, x_621.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_629 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat1;
  let x_633 : vec3<f32> = log2(vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat1;
  let x_643 : vec3<f32> = ((vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_644 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat1;
  let x_650 : vec3<f32> = clamp(vec3<f32>(x_646.x, x_646.y, x_646.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_654 : vec4<f32> = u_xlat1;
  let x_658 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_658.z, x_658.z, x_658.z));
  let x_662 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_662);
  let x_666 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_669 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(0.5f, 0.5f));
  let x_670 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_669.x, x_669.y, x_670.z);
  let x_672 : vec3<f32> = u_xlat6;
  let x_675 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_678 : vec3<f32> = u_xlat2;
  let x_680 : vec2<f32> = ((vec2<f32>(x_672.y, x_672.z) * vec2<f32>(x_675.x, x_675.y)) + vec2<f32>(x_678.x, x_678.y));
  let x_681 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_681.x, x_680.x, x_680.y);
  let x_684 : f32 = u_xlat6.x;
  let x_686 : f32 = x_31.x_Lut2D_Params.y;
  let x_689 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_684 * x_686) + x_689);
  let x_697 : vec3<f32> = u_xlat2;
  let x_699 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_697.x, x_697.z));
  let x_700 : vec3<f32> = vec3<f32>(x_699.x, x_699.y, x_699.z);
  let x_701 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat4.x = x_704;
  u_xlat4.y = 0.0f;
  let x_708 : vec3<f32> = u_xlat2;
  let x_710 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_708.x, x_708.z) + vec2<f32>(x_710.x, x_710.y));
  let x_716 : vec2<f32> = u_xlat11;
  let x_717 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_716);
  u_xlat2 = vec3<f32>(x_717.x, x_717.y, x_717.z);
  let x_720 : f32 = u_xlat1.x;
  let x_723 : f32 = x_31.x_Lut2D_Params.z;
  let x_726 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_720 * x_723) + -(x_726));
  let x_730 : vec4<f32> = u_xlat3;
  let x_733 : vec3<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_730.x, x_730.y, x_730.z)) + x_733);
  let x_735 : vec4<f32> = u_xlat1;
  let x_737 : vec3<f32> = u_xlat6;
  let x_739 : vec4<f32> = u_xlat3;
  let x_741 : vec3<f32> = ((vec3<f32>(x_735.x, x_735.x, x_735.x) * x_737) + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_747 : f32 = x_31.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_747);
  let x_749 : bool = u_xlatb1;
  if (x_749) {
    let x_752 : vec4<f32> = u_xlat0;
    let x_753 : vec3<f32> = vec3<f32>(x_752.x, x_752.y, x_752.z);
    let x_754 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
    let x_756 : vec4<f32> = u_xlat1;
    let x_760 : vec3<f32> = clamp(vec3<f32>(x_756.x, x_756.y, x_756.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_761 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
    let x_763 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_763.x, x_763.y, x_763.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_773 : vec4<f32> = u_xlat0;
  SV_Target0 = x_773;
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

