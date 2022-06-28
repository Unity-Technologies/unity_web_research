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
  x_Lut2D_Params : vec3<f32>,
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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> u_xlatb4 : vec3<bool>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_536 : f32;
  var x_958 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1055 : f32;
  var x_1067 : f32;
  var x_1079 : f32;
  var x_1204 : f32;
  var x_1216 : f32;
  var x_1228 : f32;
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
  let x_274 : vec2<f32> = ((x_269 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_275 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_274.x, x_274.y, x_275.z);
  let x_278 : vec3<f32> = u_xlat10;
  let x_280 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_278.x, x_278.y), vec2<f32>(x_280.x, x_280.y));
  let x_283 : f32 = u_xlat30;
  let x_285 : vec3<f32> = u_xlat10;
  let x_287 : vec2<f32> = (vec2<f32>(x_283, x_283) * vec2<f32>(x_285.x, x_285.y));
  let x_288 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_287.x, x_287.y, x_288.z);
  let x_290 : vec3<f32> = u_xlat10;
  let x_294 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_296 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_297 : vec2<f32> = vec2<f32>(x_294, x_296);
  let x_301 : vec2<f32> = (vec2<f32>(x_290.x, x_290.y) * vec2<f32>(x_297.x, x_297.y));
  let x_302 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_301.x, x_301.y, x_302.z);
  let x_304 : vec3<f32> = u_xlat10;
  let x_309 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_311 : vec2<f32> = (-(vec2<f32>(x_304.x, x_304.y)) * vec2<f32>(x_309.z, x_309.w));
  let x_312 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_311.x, x_311.y, x_312.z);
  let x_314 : vec3<f32> = u_xlat2;
  let x_316 : vec2<f32> = (vec2<f32>(x_314.x, x_314.y) * vec2<f32>(0.5f, 0.5f));
  let x_317 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_316.x, x_316.y, x_317.z);
  let x_319 : vec3<f32> = u_xlat2;
  let x_321 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_319.x, x_319.y), vec2<f32>(x_321.x, x_321.y));
  let x_324 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_324);
  let x_328 : f32 = u_xlat30;
  u_xlati30 = i32(x_328);
  let x_330 : i32 = u_xlati30;
  u_xlati30 = max(x_330, 3i);
  let x_332 : i32 = u_xlati30;
  u_xlati30 = min(x_332, 16i);
  let x_335 : i32 = u_xlati30;
  u_xlat1.x = f32(x_335);
  let x_338 : vec3<f32> = u_xlat10;
  let x_341 : vec3<f32> = u_xlat1;
  let x_343 : vec2<f32> = (-(vec2<f32>(x_338.x, x_338.y)) / vec2<f32>(x_341.x, x_341.x));
  let x_344 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_343.x, x_343.y, x_344.z);
  u_xlat2.y = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_361 : vec2<f32> = vs_TEXCOORD0;
  let x_362 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
  u_xlati_loop_1 = 0i;
  loop {
    let x_372 : i32 = u_xlati_loop_1;
    let x_373 : i32 = u_xlati30;
    if ((x_372 < x_373)) {
    } else {
      break;
    }
    let x_376 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_376);
    let x_378 : f32 = u_xlat36;
    u_xlat36 = (x_378 + 0.5f);
    let x_380 : f32 = u_xlat36;
    let x_382 : f32 = u_xlat1.x;
    u_xlat2.x = (x_380 / x_382);
    let x_386 : vec4<f32> = u_xlat6;
    let x_388 : vec2<f32> = (vec2<f32>(x_386.x, x_386.y) + vec2<f32>(-0.5f, -0.5f));
    let x_389 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
    let x_392 : vec4<f32> = u_xlat7;
    let x_395 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_392.x, x_392.y) * vec2<f32>(x_395.z, x_395.z)) + vec2<f32>(0.5f, 0.5f));
    let x_399 : vec4<f32> = u_xlat7;
    let x_402 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_406 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_409 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_402.z, x_402.z)) + -(vec2<f32>(x_406.x, x_406.y)));
    let x_410 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
    let x_412 : vec4<f32> = u_xlat7;
    let x_415 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_417 : vec2<f32> = (vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_415.z, x_415.w));
    let x_418 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
    let x_420 : vec4<f32> = u_xlat7;
    let x_422 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_420.x, x_420.y), vec2<f32>(x_422.x, x_422.y));
    let x_425 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_425);
    let x_427 : bool = u_xlatb11;
    if (x_427) {
      let x_431 : f32 = u_xlat36;
      let x_434 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_431, x_431) * vec2<f32>(x_434.x, x_434.y));
      let x_439 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_439);
      let x_442 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_442);
      let x_446 : f32 = u_xlat8.x;
      let x_447 : f32 = u_xlat9;
      u_xlat8.x = (x_446 / x_447);
      let x_452 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_452);
      let x_455 : f32 = u_xlat8.x;
      let x_456 : f32 = u_xlat18;
      u_xlat8.x = ((x_455 * x_456) + -1.0f);
      let x_460 : vec4<f32> = u_xlat7;
      let x_462 : vec2<f32> = u_xlat8;
      let x_465 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_460.x, x_460.y) * vec2<f32>(x_462.x, x_462.x)) + x_465);
    } else {
      let x_469 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_469);
      let x_471 : f32 = u_xlat28;
      let x_473 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_471 * x_473);
      let x_475 : f32 = u_xlat36;
      let x_477 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_475 * x_477);
      let x_480 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_480), 1.0f);
      let x_483 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_483), 1.0f);
      let x_486 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_486);
      let x_488 : f32 = u_xlat38;
      let x_489 : f32 = u_xlat9;
      u_xlat38 = (x_488 * x_489);
      let x_491 : f32 = u_xlat38;
      let x_492 : f32 = u_xlat38;
      u_xlat9 = (x_491 * x_492);
      let x_495 : f32 = u_xlat9;
      u_xlat19 = ((x_495 * 0.0208351f) + -0.085133001f);
      let x_498 : f32 = u_xlat9;
      let x_499 : f32 = u_xlat19;
      u_xlat19 = ((x_498 * x_499) + 0.180141002f);
      let x_502 : f32 = u_xlat9;
      let x_503 : f32 = u_xlat19;
      u_xlat19 = ((x_502 * x_503) + -0.330299497f);
      let x_506 : f32 = u_xlat9;
      let x_507 : f32 = u_xlat19;
      u_xlat9 = ((x_506 * x_507) + 0.999866009f);
      let x_510 : f32 = u_xlat38;
      let x_511 : f32 = u_xlat9;
      u_xlat19 = (x_510 * x_511);
      let x_514 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_514));
      let x_517 : f32 = u_xlat19;
      u_xlat19 = ((x_517 * -2.0f) + 1.570796371f);
      let x_520 : bool = u_xlatb29;
      let x_521 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_521, x_520);
      let x_523 : f32 = u_xlat38;
      let x_524 : f32 = u_xlat9;
      let x_526 : f32 = u_xlat19;
      u_xlat38 = ((x_523 * x_524) + x_526);
      let x_528 : f32 = u_xlat36;
      u_xlat36 = min(x_528, 1.0f);
      let x_531 : f32 = u_xlat36;
      let x_532 : f32 = u_xlat36;
      u_xlatb36 = (x_531 < -(x_532));
      let x_535 : bool = u_xlatb36;
      if (x_535) {
        let x_539 : f32 = u_xlat38;
        x_536 = -(x_539);
      } else {
        let x_542 : f32 = u_xlat38;
        x_536 = x_542;
      }
      let x_543 : f32 = x_536;
      u_xlat36 = x_543;
      let x_544 : f32 = u_xlat28;
      let x_545 : f32 = u_xlat36;
      u_xlat36 = ((x_544 * x_545) + -1.0f);
      let x_548 : vec4<f32> = u_xlat7;
      let x_550 : f32 = u_xlat36;
      let x_553 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_550, x_550)) + x_553);
    }
    let x_555 : vec2<f32> = u_xlat8;
    u_xlat8 = x_555;
    let x_556 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_556, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_560 : vec2<f32> = u_xlat8;
    let x_563 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_565 : vec2<f32> = (x_560 * vec2<f32>(x_563, x_563));
    let x_566 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
    let x_573 : vec4<f32> = u_xlat7;
    let x_575 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_573.x, x_573.y), 0.0f);
    u_xlat7 = x_575;
    let x_581 : vec3<f32> = u_xlat2;
    let x_583 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_581.x, x_581.y), 0.0f);
    let x_584 : vec3<f32> = vec3<f32>(x_583.x, x_583.y, x_583.z);
    let x_585 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
    let x_587 : vec4<f32> = u_xlat7;
    let x_588 : vec4<f32> = u_xlat3;
    let x_590 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_587 * x_588) + x_590);
    let x_592 : vec4<f32> = u_xlat3;
    let x_593 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_592 + x_593);
    let x_595 : vec3<f32> = u_xlat10;
    let x_597 : vec4<f32> = u_xlat6;
    let x_599 : vec2<f32> = (vec2<f32>(x_595.x, x_595.y) + vec2<f32>(x_597.x, x_597.y));
    let x_600 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);

    continuing {
      let x_602 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_602 + 1i);
    }
  }
  let x_604 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_604 / x_605);
  let x_607 : vec4<f32> = u_xlat0;
  let x_609 : vec4<f32> = u_xlat3;
  let x_611 : vec3<f32> = (vec3<f32>(x_607.x, x_607.x, x_607.x) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_616 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_622 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_622 * 0.5f);
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = u_xlat1;
  let x_630 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_625.x, x_625.y, x_625.z, x_625.y) * vec4<f32>(x_627.x, x_627.x, x_627.x, x_627.x)) + vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.y));
  let x_633 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_633, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_637 * vec4<f32>(x_639, x_639, x_639, x_639));
  let x_647 : vec4<f32> = u_xlat4;
  let x_649 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_647.x, x_647.y));
  u_xlat5 = x_649;
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_653.z, x_653.w));
  u_xlat4 = x_655;
  let x_656 : vec4<f32> = u_xlat4;
  let x_657 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_656 + x_657);
  let x_659 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = u_xlat1;
  let x_664 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_659.x, x_659.w, x_659.z, x_659.w) * vec4<f32>(x_661.x, x_661.x, x_661.x, x_661.x)) + vec4<f32>(x_664.x, x_664.y, x_664.x, x_664.y));
  let x_667 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_667, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_671 : vec4<f32> = u_xlat0;
  let x_673 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_671 * vec4<f32>(x_673, x_673, x_673, x_673));
  let x_679 : vec4<f32> = u_xlat0;
  let x_681 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_679.x, x_679.y));
  u_xlat5 = x_681;
  let x_682 : vec4<f32> = u_xlat4;
  let x_683 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_682 + x_683);
  let x_688 : vec4<f32> = u_xlat0;
  let x_690 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_688.z, x_688.w));
  u_xlat0 = x_690;
  let x_691 : vec4<f32> = u_xlat0;
  let x_692 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_691 + x_692);
  let x_694 : vec4<f32> = u_xlat0;
  let x_697 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_694 * vec4<f32>(x_697.y, x_697.y, x_697.y, x_697.y));
  let x_700 : vec2<f32> = u_xlat21;
  let x_703 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_707 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_709 : vec2<f32> = ((x_700 * vec2<f32>(x_703.x, x_703.y)) + vec2<f32>(x_707.z, x_707.w));
  let x_710 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_709.x, x_709.y, x_710.z);
  let x_717 : vec3<f32> = u_xlat1;
  let x_719 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_717.x, x_717.y));
  let x_720 : vec3<f32> = vec3<f32>(x_719.x, x_719.y, x_719.z);
  let x_721 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat0;
  let x_727 : vec3<f32> = (vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_728 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat4;
  let x_733 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_735 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_733.z, x_733.z, x_733.z));
  let x_736 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_738 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_741 : vec4<f32> = u_xlat0;
  let x_745 : vec3<f32> = x_26.x_Bloom_Color;
  let x_746 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * x_745);
  let x_747 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_750 : f32 = u_xlat0.w;
  u_xlat6.w = (x_750 * 0.25f);
  let x_753 : vec4<f32> = u_xlat3;
  let x_754 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_753 + x_754);
  let x_756 : vec4<f32> = u_xlat5;
  let x_758 : vec4<f32> = u_xlat4;
  let x_760 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  u_xlat3.w = 0.0f;
  let x_764 : vec4<f32> = u_xlat0;
  let x_765 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_764 + x_765);
  let x_769 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_769 < 0.5f);
  let x_771 : bool = u_xlatb1;
  if (x_771) {
    let x_774 : vec2<f32> = u_xlat21;
    let x_778 : vec2<f32> = x_26.x_Vignette_Center;
    let x_780 : vec2<f32> = (x_774 + -(x_778));
    let x_781 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_780.x, x_780.y, x_781.z);
    let x_783 : vec3<f32> = u_xlat1;
    let x_788 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_790 : vec2<f32> = (abs(vec2<f32>(x_783.y, x_783.x)) * vec2<f32>(x_788.x, x_788.x));
    let x_791 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_791.x, x_790.x, x_790.y, x_791.w);
    let x_794 : f32 = x_26.x_ScreenParams.x;
    let x_796 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_794 / x_796);
    let x_800 : f32 = u_xlat1.x;
    u_xlat1.x = (x_800 + -1.0f);
    let x_804 : f32 = x_26.x_Vignette_Settings.w;
    let x_806 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_804 * x_806) + 1.0f);
    let x_811 : f32 = u_xlat1.x;
    let x_813 : f32 = u_xlat3.z;
    u_xlat3.x = (x_811 * x_813);
    let x_816 : vec4<f32> = u_xlat3;
    let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
    let x_818 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_817.x, x_817.y, x_818.z, x_818.w);
    let x_820 : vec4<f32> = u_xlat3;
    let x_824 : vec2<f32> = clamp(vec2<f32>(x_820.x, x_820.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_825 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
    let x_827 : vec4<f32> = u_xlat3;
    let x_829 : vec2<f32> = log2(vec2<f32>(x_827.x, x_827.y));
    let x_830 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_829.x, x_829.y, x_830.z);
    let x_832 : vec3<f32> = u_xlat1;
    let x_835 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_837 : vec2<f32> = (vec2<f32>(x_832.x, x_832.y) * vec2<f32>(x_835.z, x_835.z));
    let x_838 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_837.x, x_837.y, x_838.z);
    let x_840 : vec3<f32> = u_xlat1;
    let x_842 : vec2<f32> = exp2(vec2<f32>(x_840.x, x_840.y));
    let x_843 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_842.x, x_842.y, x_843.z);
    let x_845 : vec3<f32> = u_xlat1;
    let x_847 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_845.x, x_845.y), vec2<f32>(x_847.x, x_847.y));
    let x_852 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_852) + 1.0f);
    let x_857 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_857, 0.0f);
    let x_861 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_861);
    let x_865 : f32 = u_xlat1.x;
    let x_867 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_865 * x_867);
    let x_871 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_871);
    let x_876 : vec3<f32> = x_26.x_Vignette_Color;
    let x_879 : vec3<f32> = (-(x_876) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_880 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
    let x_882 : vec3<f32> = u_xlat1;
    let x_884 : vec4<f32> = u_xlat3;
    let x_888 : vec3<f32> = x_26.x_Vignette_Color;
    let x_889 : vec3<f32> = ((vec3<f32>(x_882.x, x_882.x, x_882.x) * vec3<f32>(x_884.x, x_884.y, x_884.z)) + x_888);
    let x_890 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
    let x_892 : vec4<f32> = u_xlat0;
    let x_894 : vec4<f32> = u_xlat3;
    let x_896 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(x_894.x, x_894.y, x_894.z));
    let x_897 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
    let x_901 : f32 = u_xlat0.w;
    u_xlat11.x = (x_901 + -1.0f);
    let x_905 : f32 = u_xlat1.x;
    let x_907 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_905 * x_907) + 1.0f);
  } else {
    let x_917 : vec2<f32> = u_xlat21;
    let x_918 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_917);
    u_xlat1.x = x_918.w;
    let x_922 : f32 = u_xlat1.x;
    u_xlat1.z = (x_922 + 0.055f);
    let x_926 : vec3<f32> = u_xlat1;
    let x_931 : vec2<f32> = (vec2<f32>(x_926.x, x_926.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_932 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_931.x, x_931.y, x_932.z);
    let x_935 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_935), 1.1920929e-07f);
    let x_941 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_941);
    let x_945 : f32 = u_xlat21.x;
    u_xlat21.x = (x_945 * 2.400000095f);
    let x_950 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_950);
    let x_955 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_955);
    let x_957 : bool = u_xlatb1;
    if (x_957) {
      let x_962 : f32 = u_xlat11.x;
      x_958 = x_962;
    } else {
      let x_965 : f32 = u_xlat21.x;
      x_958 = x_965;
    }
    let x_966 : f32 = x_958;
    u_xlat1.x = x_966;
    let x_969 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_969) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_972 : vec3<f32> = u_xlat1;
    let x_974 : vec3<f32> = u_xlat11;
    let x_977 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_972.x, x_972.x, x_972.x) * x_974) + x_977);
    let x_979 : vec4<f32> = u_xlat0;
    let x_981 : vec3<f32> = u_xlat11;
    let x_983 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_979.x, x_979.y, x_979.z) * x_981) + -(vec3<f32>(x_983.x, x_983.y, x_983.z)));
    let x_989 : f32 = x_26.x_Vignette_Opacity;
    let x_991 : vec3<f32> = u_xlat11;
    let x_993 : vec4<f32> = u_xlat0;
    let x_995 : vec3<f32> = ((vec3<f32>(x_989, x_989, x_989) * x_991) + vec3<f32>(x_993.x, x_993.y, x_993.z));
    let x_996 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
    let x_999 : f32 = u_xlat0.w;
    u_xlat0.x = (x_999 + -1.0f);
    let x_1003 : f32 = u_xlat1.x;
    let x_1005 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1003 * x_1005) + 1.0f);
  }
  let x_1009 : vec4<f32> = u_xlat3;
  u_xlat3 = x_1009;
  let x_1010 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1010, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1014 : vec4<f32> = u_xlat3;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1014.z, x_1014.x, x_1014.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1019 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat3;
  u_xlat1 = max(vec3<f32>(x_1021.z, x_1021.x, x_1021.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1025 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1025);
  let x_1027 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1027 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1031 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1031);
  let x_1033 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1033 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1045 : vec4<f32> = u_xlat3;
  let x_1048 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1045.z, x_1045.x, x_1045.y, x_1045.z));
  u_xlatb4 = vec3<bool>(x_1048.x, x_1048.y, x_1048.z);
  let x_1052 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1052;
  let x_1054 : bool = u_xlatb4.x;
  if (x_1054) {
    let x_1059 : f32 = u_xlat0.x;
    x_1055 = x_1059;
  } else {
    let x_1062 : f32 = u_xlat1.x;
    x_1055 = x_1062;
  }
  let x_1063 : f32 = x_1055;
  hlslcc_movcTemp.x = x_1063;
  let x_1066 : bool = u_xlatb4.y;
  if (x_1066) {
    let x_1071 : f32 = u_xlat0.y;
    x_1067 = x_1071;
  } else {
    let x_1074 : f32 = u_xlat1.y;
    x_1067 = x_1074;
  }
  let x_1075 : f32 = x_1067;
  hlslcc_movcTemp.y = x_1075;
  let x_1078 : bool = u_xlatb4.z;
  if (x_1078) {
    let x_1083 : f32 = u_xlat0.z;
    x_1079 = x_1083;
  } else {
    let x_1086 : f32 = u_xlat1.z;
    x_1079 = x_1086;
  }
  let x_1087 : f32 = x_1079;
  hlslcc_movcTemp.z = x_1087;
  let x_1089 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1089;
  let x_1090 : vec4<f32> = u_xlat0;
  let x_1094 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1090.x, x_1090.y, x_1090.z) * vec3<f32>(x_1094.z, x_1094.z, x_1094.z));
  let x_1098 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1098);
  let x_1102 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1104 : vec2<f32> = (vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(0.5f, 0.5f));
  let x_1105 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1104.x, x_1104.y, x_1105.z);
  let x_1107 : vec3<f32> = u_xlat10;
  let x_1110 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1113 : vec3<f32> = u_xlat1;
  let x_1115 : vec2<f32> = ((vec2<f32>(x_1107.y, x_1107.z) * vec2<f32>(x_1110.x, x_1110.y)) + vec2<f32>(x_1113.x, x_1113.y));
  let x_1116 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1116.x, x_1115.x, x_1115.y);
  let x_1119 : f32 = u_xlat10.x;
  let x_1121 : f32 = x_26.x_Lut2D_Params.y;
  let x_1124 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1119 * x_1121) + x_1124);
  let x_1132 : vec3<f32> = u_xlat1;
  let x_1134 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1132.x, x_1132.z));
  let x_1135 : vec3<f32> = vec3<f32>(x_1134.x, x_1134.y, x_1134.z);
  let x_1136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1139 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1139;
  let x_1141 : vec2<f32> = u_xlat22;
  let x_1142 : vec3<f32> = u_xlat1;
  u_xlat20 = (x_1141 + vec2<f32>(x_1142.x, x_1142.z));
  let x_1148 : vec2<f32> = u_xlat20;
  let x_1149 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1148);
  u_xlat1 = vec3<f32>(x_1149.x, x_1149.y, x_1149.z);
  let x_1152 : f32 = u_xlat0.x;
  let x_1154 : f32 = x_26.x_Lut2D_Params.z;
  let x_1157 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1152 * x_1154) + -(x_1157));
  let x_1161 : vec4<f32> = u_xlat4;
  let x_1164 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1161.x, x_1161.y, x_1161.z)) + x_1164);
  let x_1166 : vec4<f32> = u_xlat0;
  let x_1168 : vec3<f32> = u_xlat10;
  let x_1170 : vec4<f32> = u_xlat4;
  let x_1172 : vec3<f32> = ((vec3<f32>(x_1166.x, x_1166.x, x_1166.x) * x_1168) + vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1175 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1175.x, x_1175.y, x_1175.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1179 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1183 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1183 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1186 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1186), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1189 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1189);
  let x_1191 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1191 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1194 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1194);
  let x_1198 : vec4<f32> = u_xlat0;
  let x_1200 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1198.x));
  u_xlatb0 = vec3<bool>(x_1200.x, x_1200.y, x_1200.z);
  let x_1203 : bool = u_xlatb0.x;
  if (x_1203) {
    let x_1208 : f32 = u_xlat1.x;
    x_1204 = x_1208;
  } else {
    let x_1211 : f32 = u_xlat2.x;
    x_1204 = x_1211;
  }
  let x_1212 : f32 = x_1204;
  u_xlat3.x = x_1212;
  let x_1215 : bool = u_xlatb0.y;
  if (x_1215) {
    let x_1220 : f32 = u_xlat1.y;
    x_1216 = x_1220;
  } else {
    let x_1223 : f32 = u_xlat2.y;
    x_1216 = x_1223;
  }
  let x_1224 : f32 = x_1216;
  u_xlat3.y = x_1224;
  let x_1227 : bool = u_xlatb0.z;
  if (x_1227) {
    let x_1232 : f32 = u_xlat1.z;
    x_1228 = x_1232;
  } else {
    let x_1235 : f32 = u_xlat2.z;
    x_1228 = x_1235;
  }
  let x_1236 : f32 = x_1228;
  u_xlat3.z = x_1236;
  let x_1239 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1239);
  let x_1243 : bool = u_xlatb0.x;
  if (x_1243) {
    let x_1246 : vec4<f32> = u_xlat3;
    let x_1247 : vec3<f32> = vec3<f32>(x_1246.x, x_1246.y, x_1246.z);
    let x_1248 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
    let x_1250 : vec4<f32> = u_xlat0;
    let x_1254 : vec3<f32> = clamp(vec3<f32>(x_1250.x, x_1250.y, x_1250.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1255 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
    let x_1257 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1257.x, x_1257.y, x_1257.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1267 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1267;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

