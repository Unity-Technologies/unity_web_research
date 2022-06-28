struct PGlobals {
  x_ScreenParams : vec4<f32>,
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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_3 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_5 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
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

var<private> u_xlatb0 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat18 : f32;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : f32;
  var x_371 : f32;
  var x_399 : f32;
  var x_783 : f32;
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
    let x_410 : f32 = u_xlat6;
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
  let x_472 : vec2<f32> = u_xlat14;
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
  let x_507 : vec2<f32> = u_xlat14;
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
  let x_543 : vec2<f32> = u_xlat14;
  let x_546 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_550 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_552 : vec2<f32> = ((x_543 * vec2<f32>(x_546.x, x_546.y)) + vec2<f32>(x_550.z, x_550.w));
  let x_553 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_552.x, x_552.y, x_553.z);
  let x_560 : vec3<f32> = u_xlat2;
  let x_562 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_560.x, x_560.y));
  let x_563 : vec3<f32> = vec3<f32>(x_562.x, x_562.y, x_562.z);
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_566 : vec4<f32> = u_xlat0;
  let x_570 : vec3<f32> = (vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_571 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat3;
  let x_576 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_578 : vec3<f32> = (vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_576.z, x_576.z, x_576.z));
  let x_579 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_581 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_585 : vec4<f32> = u_xlat0;
  let x_589 : vec3<f32> = x_31.x_Bloom_Color;
  let x_590 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) * x_589);
  let x_591 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_594 : f32 = u_xlat0.w;
  u_xlat5.w = (x_594 * 0.25f);
  let x_597 : vec4<f32> = u_xlat1;
  let x_598 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_597 + x_598);
  let x_600 : vec4<f32> = u_xlat4;
  let x_602 : vec4<f32> = u_xlat3;
  let x_604 : vec3<f32> = (vec3<f32>(x_600.x, x_600.y, x_600.z) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  u_xlat1.w = 0.0f;
  let x_608 : vec4<f32> = u_xlat0;
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_608 + x_609);
  let x_614 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1 = (x_614 < 0.5f);
  let x_616 : bool = u_xlatb1;
  if (x_616) {
    let x_619 : vec2<f32> = u_xlat14;
    let x_623 : vec2<f32> = x_31.x_Vignette_Center;
    let x_625 : vec2<f32> = (x_619 + -(x_623));
    let x_626 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
    let x_628 : vec4<f32> = u_xlat1;
    let x_633 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_635 : vec2<f32> = (abs(vec2<f32>(x_628.y, x_628.x)) * vec2<f32>(x_633.x, x_633.x));
    let x_636 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_636.x, x_635.x, x_635.y, x_636.w);
    let x_641 : f32 = x_31.x_ScreenParams.x;
    let x_643 : f32 = x_31.x_ScreenParams.y;
    u_xlat19 = (x_641 / x_643);
    let x_645 : f32 = u_xlat19;
    u_xlat19 = (x_645 + -1.0f);
    let x_648 : f32 = x_31.x_Vignette_Settings.w;
    let x_649 : f32 = u_xlat19;
    u_xlat19 = ((x_648 * x_649) + 1.0f);
    let x_652 : f32 = u_xlat19;
    let x_655 : f32 = u_xlat1.z;
    u_xlat1.x = (x_652 * x_655);
    let x_658 : vec4<f32> = u_xlat1;
    let x_659 : vec2<f32> = vec2<f32>(x_658.x, x_658.y);
    let x_660 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
    let x_662 : vec4<f32> = u_xlat1;
    let x_666 : vec2<f32> = clamp(vec2<f32>(x_662.x, x_662.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_667 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
    let x_669 : vec4<f32> = u_xlat1;
    let x_671 : vec2<f32> = log2(vec2<f32>(x_669.x, x_669.y));
    let x_672 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
    let x_674 : vec4<f32> = u_xlat1;
    let x_677 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_679 : vec2<f32> = (vec2<f32>(x_674.x, x_674.y) * vec2<f32>(x_677.z, x_677.z));
    let x_680 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
    let x_682 : vec4<f32> = u_xlat1;
    let x_684 : vec2<f32> = exp2(vec2<f32>(x_682.x, x_682.y));
    let x_685 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
    let x_687 : vec4<f32> = u_xlat1;
    let x_689 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_687.x, x_687.y), vec2<f32>(x_689.x, x_689.y));
    let x_694 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_694) + 1.0f);
    let x_699 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_699, 0.0f);
    let x_703 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_703);
    let x_707 : f32 = u_xlat1.x;
    let x_709 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat1.x = (x_707 * x_709);
    let x_713 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_713);
    let x_719 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_719) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_723 : vec4<f32> = u_xlat1;
    let x_725 : vec3<f32> = u_xlat7;
    let x_728 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_723.x, x_723.x, x_723.x) * x_725) + x_728);
    let x_730 : vec4<f32> = u_xlat0;
    let x_732 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_730.x, x_730.y, x_730.z) * x_732);
    let x_735 : f32 = u_xlat0.w;
    u_xlat2.x = (x_735 + -1.0f);
    let x_739 : f32 = u_xlat1.x;
    let x_741 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_739 * x_741) + 1.0f);
  } else {
    let x_751 : vec2<f32> = u_xlat14;
    let x_752 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_751);
    u_xlat1.x = x_752.w;
    let x_756 : f32 = u_xlat1.x;
    u_xlat2.x = (x_756 * 0.077399381f);
    let x_761 : f32 = u_xlat1.x;
    u_xlat8 = (x_761 + 0.055f);
    let x_764 : f32 = u_xlat8;
    u_xlat8 = (x_764 * 0.947867334f);
    let x_767 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_767), 1.1920929e-07f);
    let x_771 : f32 = u_xlat8;
    u_xlat8 = log2(x_771);
    let x_773 : f32 = u_xlat8;
    u_xlat8 = (x_773 * 2.400000095f);
    let x_776 : f32 = u_xlat8;
    u_xlat8 = exp2(x_776);
    let x_780 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_780);
    let x_782 : bool = u_xlatb1;
    if (x_782) {
      let x_787 : f32 = u_xlat2.x;
      x_783 = x_787;
    } else {
      let x_789 : f32 = u_xlat8;
      x_783 = x_789;
    }
    let x_790 : f32 = x_783;
    u_xlat1.x = x_790;
    let x_793 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_793) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_796 : vec4<f32> = u_xlat1;
    let x_798 : vec3<f32> = u_xlat2;
    let x_801 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_796.x, x_796.x, x_796.x) * x_798) + x_801);
    let x_803 : vec4<f32> = u_xlat0;
    let x_805 : vec3<f32> = u_xlat2;
    let x_807 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * x_805) + -(vec3<f32>(x_807.x, x_807.y, x_807.z)));
    let x_813 : f32 = x_31.x_Vignette_Opacity;
    let x_815 : vec3<f32> = u_xlat2;
    let x_817 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_813, x_813, x_813) * x_815) + vec3<f32>(x_817.x, x_817.y, x_817.z));
    let x_821 : f32 = u_xlat0.w;
    u_xlat0.x = (x_821 + -1.0f);
    let x_825 : f32 = u_xlat1.x;
    let x_827 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_825 * x_827) + 1.0f);
  }
  let x_831 : vec4<f32> = phase0_Input0_1;
  let x_835 : vec4<f32> = x_31.x_Grain_Params2;
  let x_839 : vec4<f32> = x_31.x_Grain_Params2;
  let x_841 : vec2<f32> = ((vec2<f32>(x_831.z, x_831.w) * vec2<f32>(x_835.x, x_835.y)) + vec2<f32>(x_839.z, x_839.w));
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
  let x_849 : vec4<f32> = u_xlat0;
  let x_851 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_849.x, x_849.y));
  let x_852 : vec3<f32> = vec3<f32>(x_851.x, x_851.y, x_851.z);
  let x_853 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat7;
  u_xlat2 = x_855;
  let x_856 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_856, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_861 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_861, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_867 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_867);
  let x_871 : f32 = x_31.x_Grain_Params1.x;
  let x_872 : f32 = u_xlat18;
  u_xlat18 = ((x_871 * -(x_872)) + 1.0f);
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec3<f32> = u_xlat7;
  let x_879 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) * x_878);
  let x_880 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : vec4<f32> = u_xlat0;
  let x_885 : f32 = x_31.x_Grain_Params1.y;
  let x_887 : f32 = x_31.x_Grain_Params1.y;
  let x_889 : f32 = x_31.x_Grain_Params1.y;
  let x_891 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) * vec3<f32>(x_885, x_887, x_889));
  let x_892 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat0;
  let x_896 : f32 = u_xlat18;
  let x_899 : vec3<f32> = u_xlat7;
  let x_900 : vec3<f32> = ((vec3<f32>(x_894.x, x_894.y, x_894.z) * vec3<f32>(x_896, x_896, x_896)) + x_899);
  let x_901 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat3;
  let x_907 : f32 = x_31.x_PostExposure;
  let x_909 : f32 = x_31.x_PostExposure;
  let x_911 : f32 = x_31.x_PostExposure;
  let x_913 : f32 = x_31.x_PostExposure;
  let x_914 : vec4<f32> = vec4<f32>(x_907, x_909, x_911, x_913);
  u_xlat0 = (vec4<f32>(x_903.w, x_903.x, x_903.y, x_903.z) * vec4<f32>(x_914.x, x_914.y, x_914.z, x_914.w));
  let x_921 : vec4<f32> = u_xlat0;
  let x_928 : vec3<f32> = ((vec3<f32>(x_921.y, x_921.z, x_921.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat1;
  let x_933 : vec3<f32> = log2(vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec4<f32> = u_xlat1;
  let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.y, x_936.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_944 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec4<f32> = u_xlat1;
  let x_950 : vec3<f32> = clamp(vec3<f32>(x_946.x, x_946.y, x_946.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_951 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec4<f32> = u_xlat1;
  let x_957 : vec2<f32> = x_31.x_Lut3D_Params;
  let x_959 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) * vec3<f32>(x_957.y, x_957.y, x_957.y));
  let x_960 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_963 : f32 = x_31.x_Lut3D_Params.x;
  u_xlat19 = (x_963 * 0.5f);
  let x_965 : vec4<f32> = u_xlat1;
  let x_968 : vec2<f32> = x_31.x_Lut3D_Params;
  let x_971 : f32 = u_xlat19;
  let x_973 : vec3<f32> = ((vec3<f32>(x_965.x, x_965.y, x_965.z) * vec3<f32>(x_968.x, x_968.x, x_968.x)) + vec3<f32>(x_971, x_971, x_971));
  let x_974 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_984 : vec4<f32> = u_xlat1;
  let x_986 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : vec3<f32> = vec3<f32>(x_986.x, x_986.y, x_986.z);
  let x_988 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_988.x, x_987.x, x_987.y, x_987.z);
  let x_992 : f32 = x_31.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_992);
  let x_994 : bool = u_xlatb1;
  if (x_994) {
    let x_997 : vec4<f32> = u_xlat0;
    let x_998 : vec3<f32> = vec3<f32>(x_997.y, x_997.z, x_997.w);
    let x_999 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
    let x_1001 : vec4<f32> = u_xlat1;
    let x_1005 : vec3<f32> = clamp(vec3<f32>(x_1001.x, x_1001.y, x_1001.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1006 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
    let x_1008 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1014 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_1014.y, x_1014.z, x_1014.w, x_1014.x);
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

