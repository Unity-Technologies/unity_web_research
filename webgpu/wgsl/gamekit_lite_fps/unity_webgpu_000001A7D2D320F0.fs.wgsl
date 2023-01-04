struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(14) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_511 : f32;
  var x_925 : f32;
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
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_81);
  let x_83 : bool = u_xlatb11;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat21.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat21.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat21.y;
    u_xlat31 = (1.0f / x_113);
    let x_116 : f32 = u_xlat21.x;
    let x_117 : f32 = u_xlat31;
    u_xlat21.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat21;
    let x_127 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_131 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat2.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat1.x;
    u_xlat12 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat22.x = max(abs(x_153), 1.0f);
    let x_158 : f32 = u_xlat22.x;
    u_xlat22.x = (1.0f / x_158);
    let x_162 : f32 = u_xlat22.x;
    let x_163 : f32 = u_xlat12;
    u_xlat12 = (x_162 * x_163);
    let x_165 : f32 = u_xlat12;
    let x_166 : f32 = u_xlat12;
    u_xlat22.x = (x_165 * x_166);
    let x_171 : f32 = u_xlat22.x;
    u_xlat32 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_177 : f32 = u_xlat22.x;
    let x_178 : f32 = u_xlat32;
    u_xlat32 = ((x_177 * x_178) + 0.180141002f);
    let x_183 : f32 = u_xlat22.x;
    let x_184 : f32 = u_xlat32;
    u_xlat32 = ((x_183 * x_184) + -0.330299497f);
    let x_189 : f32 = u_xlat22.x;
    let x_190 : f32 = u_xlat32;
    u_xlat22.x = ((x_189 * x_190) + 0.999866009f);
    let x_196 : f32 = u_xlat22.x;
    let x_197 : f32 = u_xlat12;
    u_xlat32 = (x_196 * x_197);
    let x_201 : f32 = u_xlat1.x;
    u_xlatb3 = (1.0f < abs(x_201));
    let x_204 : f32 = u_xlat32;
    u_xlat32 = ((x_204 * -2.0f) + 1.570796371f);
    let x_209 : bool = u_xlatb3;
    let x_210 : f32 = u_xlat32;
    u_xlat32 = select(0.0f, x_210, x_209);
    let x_212 : f32 = u_xlat12;
    let x_214 : f32 = u_xlat22.x;
    let x_216 : f32 = u_xlat32;
    u_xlat12 = ((x_212 * x_214) + x_216);
    let x_219 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_219, 1.0f);
    let x_224 : f32 = u_xlat1.x;
    let x_226 : f32 = u_xlat1.x;
    u_xlatb1 = (x_224 < -(x_226));
    let x_229 : bool = u_xlatb1;
    if (x_229) {
      let x_234 : f32 = u_xlat12;
      x_231 = -(x_234);
    } else {
      let x_237 : f32 = u_xlat12;
      x_231 = x_237;
    }
    let x_238 : f32 = x_231;
    u_xlat1.x = x_238;
    let x_241 : f32 = u_xlat2.x;
    let x_243 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_241 * x_243) + -1.0f);
    let x_247 : vec4<f32> = u_xlat0;
    let x_249 : vec3<f32> = u_xlat1;
    let x_252 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.x, x_249.x)) + x_252);
  }
  let x_264 : vec2<f32> = vs_TEXCOORD0;
  let x_265 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_264);
  u_xlat0.x = x_265.x;
  let x_269 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_269 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_276 : vec2<f32> = u_xlat10;
  let x_277 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_276, x_277);
  let x_279 : f32 = u_xlat30;
  let x_281 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_279, x_279) * x_281);
  let x_283 : vec2<f32> = u_xlat10;
  let x_286 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_288 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_289 : vec2<f32> = vec2<f32>(x_286, x_288);
  u_xlat10 = (x_283 * vec2<f32>(x_289.x, x_289.y));
  let x_294 : vec2<f32> = u_xlat10;
  let x_298 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_300 : vec2<f32> = (-(x_294) * vec2<f32>(x_298.z, x_298.w));
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_300.x, x_300.y, x_301.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat2;
  let x_305 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(0.5f, 0.5f));
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_308.x, x_308.y), vec2<f32>(x_310.x, x_310.y));
  let x_313 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_313);
  let x_317 : f32 = u_xlat30;
  u_xlati30 = i32(x_317);
  let x_319 : i32 = u_xlati30;
  u_xlati30 = max(x_319, 3i);
  let x_321 : i32 = u_xlati30;
  u_xlati30 = min(x_321, 16i);
  let x_324 : i32 = u_xlati30;
  u_xlat1.x = f32(x_324);
  let x_327 : vec2<f32> = u_xlat10;
  let x_329 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(x_327) / vec2<f32>(x_329.x, x_329.x));
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
  let x_345 : vec2<f32> = vs_TEXCOORD0;
  u_xlat22 = x_345;
  u_xlati_loop_1 = 0i;
  loop {
    let x_354 : i32 = u_xlati_loop_1;
    let x_355 : i32 = u_xlati30;
    if ((x_354 < x_355)) {
    } else {
      break;
    }
    let x_358 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_358);
    let x_362 : f32 = u_xlat16.x;
    u_xlat16.x = (x_362 + 0.5f);
    let x_366 : f32 = u_xlat16.x;
    let x_368 : f32 = u_xlat1.x;
    u_xlat2.x = (x_366 / x_368);
    let x_371 : vec2<f32> = u_xlat22;
    u_xlat16 = (x_371 + vec2<f32>(-0.5f, -0.5f));
    let x_374 : vec2<f32> = u_xlat16;
    let x_376 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_379 : vec2<f32> = ((x_374 * vec2<f32>(x_376.z, x_376.z)) + vec2<f32>(0.5f, 0.5f));
    let x_380 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
    let x_382 : vec2<f32> = u_xlat16;
    let x_384 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_388 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = ((x_382 * vec2<f32>(x_384.z, x_384.z)) + -(vec2<f32>(x_388.x, x_388.y)));
    let x_392 : vec2<f32> = u_xlat16;
    let x_394 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = (x_392 * vec2<f32>(x_394.z, x_394.w));
    let x_398 : vec2<f32> = u_xlat16;
    let x_399 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_398, x_399);
    let x_401 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_401);
    let x_403 : bool = u_xlatb11;
    if (x_403) {
      let x_407 : f32 = u_xlat36;
      let x_410 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_407, x_407) * vec2<f32>(x_410.x, x_410.y));
      let x_415 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_415);
      let x_419 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_419);
      let x_421 : f32 = u_xlat8;
      let x_422 : f32 = u_xlat9;
      u_xlat27.x = (x_421 / x_422);
      let x_427 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_427);
      let x_430 : f32 = u_xlat27.x;
      let x_431 : f32 = u_xlat37;
      u_xlat27.x = ((x_430 * x_431) + -1.0f);
      let x_435 : vec2<f32> = u_xlat16;
      let x_436 : vec2<f32> = u_xlat27;
      let x_439 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_435 * vec2<f32>(x_436.x, x_436.x)) + vec2<f32>(x_439.x, x_439.y));
    } else {
      let x_443 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_443);
      let x_445 : f32 = u_xlat8;
      let x_447 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat8 = (x_445 * x_447);
      let x_449 : f32 = u_xlat36;
      let x_451 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_449 * x_451);
      let x_454 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_454), 1.0f);
      let x_458 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_458), 1.0f);
      let x_461 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_461);
      let x_463 : f32 = u_xlat28;
      let x_464 : f32 = u_xlat18;
      u_xlat18 = (x_463 * x_464);
      let x_466 : f32 = u_xlat18;
      let x_467 : f32 = u_xlat18;
      u_xlat28 = (x_466 * x_467);
      let x_470 : f32 = u_xlat28;
      u_xlat38 = ((x_470 * 0.0208351f) + -0.085133001f);
      let x_473 : f32 = u_xlat28;
      let x_474 : f32 = u_xlat38;
      u_xlat38 = ((x_473 * x_474) + 0.180141002f);
      let x_477 : f32 = u_xlat28;
      let x_478 : f32 = u_xlat38;
      u_xlat38 = ((x_477 * x_478) + -0.330299497f);
      let x_481 : f32 = u_xlat28;
      let x_482 : f32 = u_xlat38;
      u_xlat28 = ((x_481 * x_482) + 0.999866009f);
      let x_485 : f32 = u_xlat28;
      let x_486 : f32 = u_xlat18;
      u_xlat38 = (x_485 * x_486);
      let x_489 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_489));
      let x_492 : f32 = u_xlat38;
      u_xlat38 = ((x_492 * -2.0f) + 1.570796371f);
      let x_495 : bool = u_xlatb9;
      let x_496 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_496, x_495);
      let x_498 : f32 = u_xlat18;
      let x_499 : f32 = u_xlat28;
      let x_501 : f32 = u_xlat38;
      u_xlat18 = ((x_498 * x_499) + x_501);
      let x_503 : f32 = u_xlat36;
      u_xlat36 = min(x_503, 1.0f);
      let x_506 : f32 = u_xlat36;
      let x_507 : f32 = u_xlat36;
      u_xlatb36 = (x_506 < -(x_507));
      let x_510 : bool = u_xlatb36;
      if (x_510) {
        let x_514 : f32 = u_xlat18;
        x_511 = -(x_514);
      } else {
        let x_517 : f32 = u_xlat18;
        x_511 = x_517;
      }
      let x_518 : f32 = x_511;
      u_xlat36 = x_518;
      let x_519 : f32 = u_xlat8;
      let x_520 : f32 = u_xlat36;
      u_xlat36 = ((x_519 * x_520) + -1.0f);
      let x_523 : vec2<f32> = u_xlat16;
      let x_524 : f32 = u_xlat36;
      let x_527 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_523 * vec2<f32>(x_524, x_524)) + vec2<f32>(x_527.x, x_527.y));
    }
    let x_530 : vec2<f32> = u_xlat27;
    u_xlat27 = x_530;
    let x_531 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_531, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_535 : vec2<f32> = u_xlat27;
    let x_538 : f32 = x_26.x_RenderViewportScaleFactor;
    u_xlat16 = (x_535 * vec2<f32>(x_538, x_538));
    let x_546 : vec2<f32> = u_xlat16;
    let x_547 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_546, 0.0f);
    u_xlat7 = x_547;
    let x_553 : vec4<f32> = u_xlat2;
    let x_555 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_553.x, x_553.y), 0.0f);
    let x_556 : vec3<f32> = vec3<f32>(x_555.x, x_555.y, x_555.z);
    let x_557 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
    let x_559 : vec4<f32> = u_xlat7;
    let x_560 : vec4<f32> = u_xlat3;
    let x_562 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_559 * x_560) + x_562);
    let x_564 : vec4<f32> = u_xlat3;
    let x_565 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_564 + x_565);
    let x_567 : vec2<f32> = u_xlat10;
    let x_568 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_567 + x_568);

    continuing {
      let x_570 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_570 + 1i);
    }
  }
  let x_572 : vec4<f32> = u_xlat4;
  let x_573 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_572 / x_573);
  let x_575 : vec4<f32> = u_xlat0;
  let x_577 : vec4<f32> = u_xlat2;
  let x_579 : vec3<f32> = (vec3<f32>(x_575.x, x_575.x, x_575.x) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_584 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_590 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_590 * 0.5f);
  let x_593 : vec4<f32> = u_xlat0;
  let x_595 : vec3<f32> = u_xlat1;
  let x_598 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_593.x, x_593.y, x_593.z, x_593.y) * vec4<f32>(x_595.x, x_595.x, x_595.x, x_595.x)) + vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y));
  let x_601 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_601, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_605 : vec4<f32> = u_xlat3;
  let x_607 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_605 * vec4<f32>(x_607, x_607, x_607, x_607));
  let x_615 : vec4<f32> = u_xlat3;
  let x_617 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_615.x, x_615.y));
  u_xlat4 = x_617;
  let x_621 : vec4<f32> = u_xlat3;
  let x_623 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_621.z, x_621.w));
  u_xlat3 = x_623;
  let x_624 : vec4<f32> = u_xlat3;
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_624 + x_625);
  let x_627 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = u_xlat1;
  let x_632 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_627.x, x_627.w, x_627.z, x_627.w) * vec4<f32>(x_629.x, x_629.x, x_629.x, x_629.x)) + vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y));
  let x_635 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_635, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_639 : vec4<f32> = u_xlat0;
  let x_641 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_639 * vec4<f32>(x_641, x_641, x_641, x_641));
  let x_647 : vec4<f32> = u_xlat0;
  let x_649 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_647.x, x_647.y));
  u_xlat4 = x_649;
  let x_650 : vec4<f32> = u_xlat3;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_650 + x_651);
  let x_656 : vec4<f32> = u_xlat0;
  let x_658 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_656.z, x_656.w));
  u_xlat0 = x_658;
  let x_659 : vec4<f32> = u_xlat0;
  let x_660 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_659 + x_660);
  let x_662 : vec4<f32> = u_xlat0;
  let x_665 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_662 * vec4<f32>(x_665.y, x_665.y, x_665.y, x_665.y));
  let x_668 : vec2<f32> = u_xlat21;
  let x_671 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_675 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_677 : vec2<f32> = ((x_668 * vec2<f32>(x_671.x, x_671.y)) + vec2<f32>(x_675.z, x_675.w));
  let x_678 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_677.x, x_677.y, x_678.z);
  let x_685 : vec3<f32> = u_xlat1;
  let x_687 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_685.x, x_685.y));
  let x_688 : vec3<f32> = vec3<f32>(x_687.x, x_687.y, x_687.z);
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat0;
  let x_695 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_696 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat3;
  let x_701 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_703 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_701.z, x_701.z, x_701.z));
  let x_704 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_706 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_709 : vec4<f32> = u_xlat0;
  let x_713 : vec3<f32> = x_26.x_Bloom_Color;
  let x_714 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * x_713);
  let x_715 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_718 : f32 = u_xlat0.w;
  u_xlat5.w = (x_718 * 0.25f);
  let x_721 : vec4<f32> = u_xlat2;
  let x_722 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_721 + x_722);
  let x_724 : vec4<f32> = u_xlat4;
  let x_726 : vec4<f32> = u_xlat3;
  let x_728 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  u_xlat2.w = 0.0f;
  let x_732 : vec4<f32> = u_xlat0;
  let x_733 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_732 + x_733);
  let x_736 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_736 < 0.5f);
  let x_738 : bool = u_xlatb1;
  if (x_738) {
    let x_741 : vec2<f32> = u_xlat21;
    let x_745 : vec2<f32> = x_26.x_Vignette_Center;
    let x_747 : vec2<f32> = (x_741 + -(x_745));
    let x_748 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_747.x, x_747.y, x_748.z);
    let x_750 : vec3<f32> = u_xlat1;
    let x_755 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_757 : vec2<f32> = (abs(vec2<f32>(x_750.y, x_750.x)) * vec2<f32>(x_755.x, x_755.x));
    let x_758 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_758.x, x_757.x, x_757.y, x_758.w);
    let x_761 : f32 = x_26.x_ScreenParams.x;
    let x_763 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_761 / x_763);
    let x_767 : f32 = u_xlat1.x;
    u_xlat1.x = (x_767 + -1.0f);
    let x_771 : f32 = x_26.x_Vignette_Settings.w;
    let x_773 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_771 * x_773) + 1.0f);
    let x_778 : f32 = u_xlat1.x;
    let x_780 : f32 = u_xlat2.z;
    u_xlat2.x = (x_778 * x_780);
    let x_783 : vec4<f32> = u_xlat2;
    let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
    let x_785 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
    let x_787 : vec4<f32> = u_xlat2;
    let x_791 : vec2<f32> = clamp(vec2<f32>(x_787.x, x_787.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_792 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
    let x_794 : vec4<f32> = u_xlat2;
    let x_796 : vec2<f32> = log2(vec2<f32>(x_794.x, x_794.y));
    let x_797 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_796.x, x_796.y, x_797.z);
    let x_799 : vec3<f32> = u_xlat1;
    let x_802 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_804 : vec2<f32> = (vec2<f32>(x_799.x, x_799.y) * vec2<f32>(x_802.z, x_802.z));
    let x_805 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_804.x, x_804.y, x_805.z);
    let x_807 : vec3<f32> = u_xlat1;
    let x_809 : vec2<f32> = exp2(vec2<f32>(x_807.x, x_807.y));
    let x_810 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_809.x, x_809.y, x_810.z);
    let x_812 : vec3<f32> = u_xlat1;
    let x_814 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_812.x, x_812.y), vec2<f32>(x_814.x, x_814.y));
    let x_819 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_819) + 1.0f);
    let x_824 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_824, 0.0f);
    let x_828 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_828);
    let x_832 : f32 = u_xlat1.x;
    let x_834 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_832 * x_834);
    let x_838 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_838);
    let x_843 : vec3<f32> = x_26.x_Vignette_Color;
    let x_846 : vec3<f32> = (-(x_843) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_847 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
    let x_849 : vec3<f32> = u_xlat1;
    let x_851 : vec4<f32> = u_xlat2;
    let x_855 : vec3<f32> = x_26.x_Vignette_Color;
    let x_856 : vec3<f32> = ((vec3<f32>(x_849.x, x_849.x, x_849.x) * vec3<f32>(x_851.x, x_851.y, x_851.z)) + x_855);
    let x_857 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
    let x_859 : vec4<f32> = u_xlat0;
    let x_861 : vec4<f32> = u_xlat2;
    let x_863 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(x_861.x, x_861.y, x_861.z));
    let x_864 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
    let x_868 : f32 = u_xlat0.w;
    u_xlat11.x = (x_868 + -1.0f);
    let x_872 : f32 = u_xlat1.x;
    let x_874 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_872 * x_874) + 1.0f);
  } else {
    let x_884 : vec2<f32> = u_xlat21;
    let x_885 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_884);
    u_xlat1.x = x_885.w;
    let x_889 : f32 = u_xlat1.x;
    u_xlat1.z = (x_889 + 0.055f);
    let x_893 : vec3<f32> = u_xlat1;
    let x_898 : vec2<f32> = (vec2<f32>(x_893.x, x_893.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_899 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_898.x, x_898.y, x_899.z);
    let x_902 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_902), 1.1920929e-07f);
    let x_908 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_908);
    let x_912 : f32 = u_xlat21.x;
    u_xlat21.x = (x_912 * 2.400000095f);
    let x_917 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_917);
    let x_922 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_922);
    let x_924 : bool = u_xlatb1;
    if (x_924) {
      let x_929 : f32 = u_xlat11.x;
      x_925 = x_929;
    } else {
      let x_932 : f32 = u_xlat21.x;
      x_925 = x_932;
    }
    let x_933 : f32 = x_925;
    u_xlat1.x = x_933;
    let x_936 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_936) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_939 : vec3<f32> = u_xlat1;
    let x_941 : vec3<f32> = u_xlat11;
    let x_944 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_939.x, x_939.x, x_939.x) * x_941) + x_944);
    let x_946 : vec4<f32> = u_xlat0;
    let x_948 : vec3<f32> = u_xlat11;
    let x_950 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_946.x, x_946.y, x_946.z) * x_948) + -(vec3<f32>(x_950.x, x_950.y, x_950.z)));
    let x_956 : f32 = x_26.x_Vignette_Opacity;
    let x_958 : vec3<f32> = u_xlat11;
    let x_960 : vec4<f32> = u_xlat0;
    let x_962 : vec3<f32> = ((vec3<f32>(x_956, x_956, x_956) * x_958) + vec3<f32>(x_960.x, x_960.y, x_960.z));
    let x_963 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_966 : f32 = u_xlat0.w;
    u_xlat0.x = (x_966 + -1.0f);
    let x_970 : f32 = u_xlat1.x;
    let x_972 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_970 * x_972) + 1.0f);
  }
  let x_977 : vec2<f32> = vs_TEXCOORD1;
  let x_980 : vec4<f32> = x_26.x_Grain_Params2;
  let x_984 : vec4<f32> = x_26.x_Grain_Params2;
  let x_986 : vec2<f32> = ((x_977 * vec2<f32>(x_980.x, x_980.y)) + vec2<f32>(x_984.z, x_984.w));
  let x_987 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_986.x, x_986.y, x_987.z, x_987.w);
  let x_994 : vec4<f32> = u_xlat0;
  let x_996 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_994.x, x_994.y));
  let x_997 : vec3<f32> = vec3<f32>(x_996.x, x_996.y, x_996.z);
  let x_998 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_1000.x, x_1000.y, x_1000.z);
  let x_1002 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1002, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1006 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1006, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1012 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1012);
  let x_1016 : f32 = x_26.x_Grain_Params1.x;
  let x_1017 : f32 = u_xlat30;
  u_xlat30 = ((x_1016 * -(x_1017)) + 1.0f);
  let x_1021 : vec4<f32> = u_xlat0;
  let x_1023 : vec4<f32> = u_xlat2;
  let x_1025 : vec3<f32> = (vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1031 : f32 = x_26.x_Grain_Params1.y;
  let x_1033 : f32 = x_26.x_Grain_Params1.y;
  let x_1035 : f32 = x_26.x_Grain_Params1.y;
  let x_1037 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(x_1031, x_1033, x_1035));
  let x_1038 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : vec4<f32> = u_xlat0;
  let x_1042 : f32 = u_xlat30;
  let x_1045 : vec4<f32> = u_xlat2;
  let x_1047 : vec3<f32> = ((vec3<f32>(x_1040.x, x_1040.y, x_1040.z) * vec3<f32>(x_1042, x_1042, x_1042)) + vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec4<f32> = u_xlat3;
  let x_1054 : f32 = x_26.x_PostExposure;
  let x_1056 : f32 = x_26.x_PostExposure;
  let x_1058 : f32 = x_26.x_PostExposure;
  let x_1060 : f32 = x_26.x_PostExposure;
  let x_1061 : vec4<f32> = vec4<f32>(x_1054, x_1056, x_1058, x_1060);
  u_xlat0 = (vec4<f32>(x_1050.w, x_1050.x, x_1050.y, x_1050.z) * vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.w));
  let x_1068 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1068.y, x_1068.z, x_1068.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1076 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1076);
  let x_1078 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1078 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1085 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1085, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1089 : vec3<f32> = u_xlat1;
  let x_1092 : vec2<f32> = x_26.x_Lut3D_Params;
  u_xlat1 = (x_1089 * vec3<f32>(x_1092.y, x_1092.y, x_1092.y));
  let x_1096 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat31 = (x_1096 * 0.5f);
  let x_1098 : vec3<f32> = u_xlat1;
  let x_1100 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1103 : f32 = u_xlat31;
  u_xlat1 = ((x_1098 * vec3<f32>(x_1100.x, x_1100.x, x_1100.x)) + vec3<f32>(x_1103, x_1103, x_1103));
  let x_1114 : vec3<f32> = u_xlat1;
  let x_1115 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, x_1114);
  let x_1116 : vec3<f32> = vec3<f32>(x_1115.x, x_1115.y, x_1115.z);
  let x_1117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1117.x, x_1116.x, x_1116.y, x_1116.z);
  let x_1121 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1121);
  let x_1123 : bool = u_xlatb1;
  if (x_1123) {
    let x_1126 : vec4<f32> = u_xlat0;
    u_xlat1 = vec3<f32>(x_1126.y, x_1126.z, x_1126.w);
    let x_1128 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_1128, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1132 : vec3<f32> = u_xlat1;
    u_xlat0.x = dot(x_1132, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1137 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_1137.y, x_1137.z, x_1137.w, x_1137.x);
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

