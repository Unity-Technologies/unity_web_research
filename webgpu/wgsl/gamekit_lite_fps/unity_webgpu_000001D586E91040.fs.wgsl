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
  var x_1097 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1194 : f32;
  var x_1206 : f32;
  var x_1218 : f32;
  var x_1343 : f32;
  var x_1355 : f32;
  var x_1367 : f32;
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
  u_xlat0 = (vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_620 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_629 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_620.x, x_620.y, x_620.w, x_620.y)) * vec4<f32>(x_626.x, x_626.x, x_626.x, x_626.x)) + vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y));
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_632, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_636 : vec4<f32> = u_xlat4;
  let x_638 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_636 * vec4<f32>(x_638, x_638, x_638, x_638));
  let x_646 : vec4<f32> = u_xlat4;
  let x_648 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_646.x, x_646.y));
  u_xlat5 = x_648;
  let x_652 : vec4<f32> = u_xlat4;
  let x_654 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_652.z, x_652.w));
  u_xlat4 = x_654;
  let x_655 : vec4<f32> = u_xlat4;
  let x_658 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_655 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_658);
  let x_660 : vec4<f32> = u_xlat0;
  let x_664 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_667 : vec2<f32> = u_xlat21;
  let x_668 : vec2<f32> = ((-(vec2<f32>(x_660.z, x_660.y)) * vec2<f32>(x_664.x, x_664.x)) + x_667);
  let x_669 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_668.x, x_668.y, x_669.z);
  let x_671 : vec3<f32> = u_xlat1;
  let x_675 : vec2<f32> = clamp(vec2<f32>(x_671.x, x_671.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_676 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_675.x, x_675.y, x_676.z);
  let x_678 : vec3<f32> = u_xlat1;
  let x_681 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_683 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(x_681, x_681));
  let x_684 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_683.x, x_683.y, x_684.z);
  let x_689 : vec3<f32> = u_xlat1;
  let x_691 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_689.x, x_689.y));
  u_xlat5 = x_691;
  let x_692 : vec4<f32> = u_xlat4;
  let x_693 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_692 + x_693);
  let x_695 : vec4<f32> = u_xlat0;
  let x_698 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_701 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_695.z, x_695.w, x_695.x, x_695.w) * vec4<f32>(x_698.x, x_698.x, x_698.x, x_698.x)) + vec4<f32>(x_701.x, x_701.y, x_701.x, x_701.y));
  let x_704 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_704, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_708 : vec4<f32> = u_xlat5;
  let x_710 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_708 * vec4<f32>(x_710, x_710, x_710, x_710));
  let x_716 : vec4<f32> = u_xlat5;
  let x_718 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_716.x, x_716.y));
  u_xlat6 = x_718;
  let x_719 : vec4<f32> = u_xlat6;
  let x_721 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_719 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_721);
  let x_723 : vec2<f32> = u_xlat21;
  let x_724 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_723.x, x_723.y, x_724.z);
  let x_726 : vec3<f32> = u_xlat1;
  let x_730 : vec2<f32> = clamp(vec2<f32>(x_726.x, x_726.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_731 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_730.x, x_730.y, x_731.z);
  let x_733 : vec3<f32> = u_xlat1;
  let x_736 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_738 : vec2<f32> = (vec2<f32>(x_733.x, x_733.y) * vec2<f32>(x_736, x_736));
  let x_739 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_738.x, x_738.y, x_739.z);
  let x_744 : vec3<f32> = u_xlat1;
  let x_746 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_744.x, x_744.y));
  u_xlat6 = x_746;
  let x_747 : vec4<f32> = u_xlat6;
  let x_751 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_747 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_751);
  let x_756 : vec4<f32> = u_xlat5;
  let x_758 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_756.z, x_756.w));
  u_xlat5 = x_758;
  let x_759 : vec4<f32> = u_xlat5;
  let x_761 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_759 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_761);
  let x_763 : vec4<f32> = u_xlat0;
  let x_766 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_769 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_763.z, x_763.y, x_763.w, x_763.y) * vec4<f32>(x_766.x, x_766.x, x_766.x, x_766.x)) + vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.y));
  let x_772 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_772, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_776 : vec4<f32> = u_xlat5;
  let x_778 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_776 * vec4<f32>(x_778, x_778, x_778, x_778));
  let x_784 : vec4<f32> = u_xlat5;
  let x_786 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_784.x, x_784.y));
  u_xlat6 = x_786;
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_787 + x_788);
  let x_793 : vec4<f32> = u_xlat5;
  let x_795 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_793.z, x_793.w));
  u_xlat5 = x_795;
  let x_796 : vec4<f32> = u_xlat5;
  let x_798 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_796 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_798);
  let x_800 : vec4<f32> = u_xlat0;
  let x_803 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_806 : vec2<f32> = u_xlat21;
  let x_807 : vec2<f32> = ((vec2<f32>(x_800.x, x_800.y) * vec2<f32>(x_803.x, x_803.x)) + x_806);
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat0;
  let x_814 : vec2<f32> = clamp(vec2<f32>(x_810.x, x_810.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_815 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat0;
  let x_820 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_822 : vec2<f32> = (vec2<f32>(x_817.x, x_817.y) * vec2<f32>(x_820, x_820));
  let x_823 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
  let x_828 : vec4<f32> = u_xlat0;
  let x_830 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_828.x, x_828.y));
  u_xlat0 = x_830;
  let x_831 : vec4<f32> = u_xlat0;
  let x_832 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_831 + x_832);
  let x_834 : vec4<f32> = u_xlat0;
  let x_836 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_834 * vec4<f32>(x_836.y, x_836.y, x_836.y, x_836.y));
  let x_839 : vec2<f32> = u_xlat21;
  let x_842 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_846 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_848 : vec2<f32> = ((x_839 * vec2<f32>(x_842.x, x_842.y)) + vec2<f32>(x_846.z, x_846.w));
  let x_849 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_848.x, x_848.y, x_849.z);
  let x_856 : vec3<f32> = u_xlat1;
  let x_858 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_856.x, x_856.y));
  let x_859 : vec3<f32> = vec3<f32>(x_858.x, x_858.y, x_858.z);
  let x_860 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat0;
  let x_866 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_867 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat4;
  let x_872 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_874 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(x_872.z, x_872.z, x_872.z));
  let x_875 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_877 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_880 : vec4<f32> = u_xlat0;
  let x_884 : vec3<f32> = x_26.x_Bloom_Color;
  let x_885 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * x_884);
  let x_886 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = u_xlat0.w;
  u_xlat6.w = (x_889 * 0.0625f);
  let x_892 : vec4<f32> = u_xlat3;
  let x_893 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_892 + x_893);
  let x_895 : vec4<f32> = u_xlat5;
  let x_897 : vec4<f32> = u_xlat4;
  let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  u_xlat3.w = 0.0f;
  let x_903 : vec4<f32> = u_xlat0;
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_903 + x_904);
  let x_908 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_908 < 0.5f);
  let x_910 : bool = u_xlatb1;
  if (x_910) {
    let x_913 : vec2<f32> = u_xlat21;
    let x_917 : vec2<f32> = x_26.x_Vignette_Center;
    let x_919 : vec2<f32> = (x_913 + -(x_917));
    let x_920 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_919.x, x_919.y, x_920.z);
    let x_922 : vec3<f32> = u_xlat1;
    let x_927 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_929 : vec2<f32> = (abs(vec2<f32>(x_922.y, x_922.x)) * vec2<f32>(x_927.x, x_927.x));
    let x_930 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_930.x, x_929.x, x_929.y, x_930.w);
    let x_933 : f32 = x_26.x_ScreenParams.x;
    let x_935 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_933 / x_935);
    let x_939 : f32 = u_xlat1.x;
    u_xlat1.x = (x_939 + -1.0f);
    let x_943 : f32 = x_26.x_Vignette_Settings.w;
    let x_945 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_943 * x_945) + 1.0f);
    let x_950 : f32 = u_xlat1.x;
    let x_952 : f32 = u_xlat3.z;
    u_xlat3.x = (x_950 * x_952);
    let x_955 : vec4<f32> = u_xlat3;
    let x_956 : vec2<f32> = vec2<f32>(x_955.x, x_955.y);
    let x_957 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
    let x_959 : vec4<f32> = u_xlat3;
    let x_963 : vec2<f32> = clamp(vec2<f32>(x_959.x, x_959.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_964 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
    let x_966 : vec4<f32> = u_xlat3;
    let x_968 : vec2<f32> = log2(vec2<f32>(x_966.x, x_966.y));
    let x_969 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_968.x, x_968.y, x_969.z);
    let x_971 : vec3<f32> = u_xlat1;
    let x_974 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_976 : vec2<f32> = (vec2<f32>(x_971.x, x_971.y) * vec2<f32>(x_974.z, x_974.z));
    let x_977 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_976.x, x_976.y, x_977.z);
    let x_979 : vec3<f32> = u_xlat1;
    let x_981 : vec2<f32> = exp2(vec2<f32>(x_979.x, x_979.y));
    let x_982 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_981.x, x_981.y, x_982.z);
    let x_984 : vec3<f32> = u_xlat1;
    let x_986 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_984.x, x_984.y), vec2<f32>(x_986.x, x_986.y));
    let x_991 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_991) + 1.0f);
    let x_996 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_996, 0.0f);
    let x_1000 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_1000);
    let x_1004 : f32 = u_xlat1.x;
    let x_1006 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_1004 * x_1006);
    let x_1010 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_1010);
    let x_1015 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1018 : vec3<f32> = (-(x_1015) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1019 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
    let x_1021 : vec3<f32> = u_xlat1;
    let x_1023 : vec4<f32> = u_xlat3;
    let x_1027 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1028 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.x, x_1021.x) * vec3<f32>(x_1023.x, x_1023.y, x_1023.z)) + x_1027);
    let x_1029 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
    let x_1031 : vec4<f32> = u_xlat0;
    let x_1033 : vec4<f32> = u_xlat3;
    let x_1035 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
    let x_1036 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
    let x_1040 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1040 + -1.0f);
    let x_1044 : f32 = u_xlat1.x;
    let x_1046 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_1044 * x_1046) + 1.0f);
  } else {
    let x_1056 : vec2<f32> = u_xlat21;
    let x_1057 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1056);
    u_xlat1.x = x_1057.w;
    let x_1061 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1061 + 0.055f);
    let x_1065 : vec3<f32> = u_xlat1;
    let x_1070 : vec2<f32> = (vec2<f32>(x_1065.x, x_1065.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1071 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1070.x, x_1070.y, x_1071.z);
    let x_1074 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1074), 1.1920929e-07f);
    let x_1080 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1080);
    let x_1084 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1084 * 2.400000095f);
    let x_1089 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1089);
    let x_1094 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1094);
    let x_1096 : bool = u_xlatb1;
    if (x_1096) {
      let x_1101 : f32 = u_xlat11.x;
      x_1097 = x_1101;
    } else {
      let x_1104 : f32 = u_xlat21.x;
      x_1097 = x_1104;
    }
    let x_1105 : f32 = x_1097;
    u_xlat1.x = x_1105;
    let x_1108 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1108) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1111 : vec3<f32> = u_xlat1;
    let x_1113 : vec3<f32> = u_xlat11;
    let x_1116 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1111.x, x_1111.x, x_1111.x) * x_1113) + x_1116);
    let x_1118 : vec4<f32> = u_xlat0;
    let x_1120 : vec3<f32> = u_xlat11;
    let x_1122 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * x_1120) + -(vec3<f32>(x_1122.x, x_1122.y, x_1122.z)));
    let x_1128 : f32 = x_26.x_Vignette_Opacity;
    let x_1130 : vec3<f32> = u_xlat11;
    let x_1132 : vec4<f32> = u_xlat0;
    let x_1134 : vec3<f32> = ((vec3<f32>(x_1128, x_1128, x_1128) * x_1130) + vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
    let x_1135 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
    let x_1138 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1138 + -1.0f);
    let x_1142 : f32 = u_xlat1.x;
    let x_1144 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1142 * x_1144) + 1.0f);
  }
  let x_1148 : vec4<f32> = u_xlat3;
  u_xlat3 = x_1148;
  let x_1149 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1149, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1153 : vec4<f32> = u_xlat3;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1153.z, x_1153.x, x_1153.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec4<f32> = u_xlat3;
  u_xlat1 = max(vec3<f32>(x_1160.z, x_1160.x, x_1160.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1164 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1164);
  let x_1166 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1166 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1170 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1170);
  let x_1172 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1172 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1184 : vec4<f32> = u_xlat3;
  let x_1187 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1184.z, x_1184.x, x_1184.y, x_1184.z));
  u_xlatb4 = vec3<bool>(x_1187.x, x_1187.y, x_1187.z);
  let x_1191 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1191;
  let x_1193 : bool = u_xlatb4.x;
  if (x_1193) {
    let x_1198 : f32 = u_xlat0.x;
    x_1194 = x_1198;
  } else {
    let x_1201 : f32 = u_xlat1.x;
    x_1194 = x_1201;
  }
  let x_1202 : f32 = x_1194;
  hlslcc_movcTemp.x = x_1202;
  let x_1205 : bool = u_xlatb4.y;
  if (x_1205) {
    let x_1210 : f32 = u_xlat0.y;
    x_1206 = x_1210;
  } else {
    let x_1213 : f32 = u_xlat1.y;
    x_1206 = x_1213;
  }
  let x_1214 : f32 = x_1206;
  hlslcc_movcTemp.y = x_1214;
  let x_1217 : bool = u_xlatb4.z;
  if (x_1217) {
    let x_1222 : f32 = u_xlat0.z;
    x_1218 = x_1222;
  } else {
    let x_1225 : f32 = u_xlat1.z;
    x_1218 = x_1225;
  }
  let x_1226 : f32 = x_1218;
  hlslcc_movcTemp.z = x_1226;
  let x_1228 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1228;
  let x_1229 : vec4<f32> = u_xlat0;
  let x_1233 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1229.x, x_1229.y, x_1229.z) * vec3<f32>(x_1233.z, x_1233.z, x_1233.z));
  let x_1237 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1237);
  let x_1241 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1243 : vec2<f32> = (vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(0.5f, 0.5f));
  let x_1244 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1243.x, x_1243.y, x_1244.z);
  let x_1246 : vec3<f32> = u_xlat10;
  let x_1249 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1252 : vec3<f32> = u_xlat1;
  let x_1254 : vec2<f32> = ((vec2<f32>(x_1246.y, x_1246.z) * vec2<f32>(x_1249.x, x_1249.y)) + vec2<f32>(x_1252.x, x_1252.y));
  let x_1255 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1255.x, x_1254.x, x_1254.y);
  let x_1258 : f32 = u_xlat10.x;
  let x_1260 : f32 = x_26.x_Lut2D_Params.y;
  let x_1263 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1258 * x_1260) + x_1263);
  let x_1271 : vec3<f32> = u_xlat1;
  let x_1273 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1271.x, x_1271.z));
  let x_1274 : vec3<f32> = vec3<f32>(x_1273.x, x_1273.y, x_1273.z);
  let x_1275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1278 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1278;
  let x_1280 : vec2<f32> = u_xlat22;
  let x_1281 : vec3<f32> = u_xlat1;
  u_xlat20 = (x_1280 + vec2<f32>(x_1281.x, x_1281.z));
  let x_1287 : vec2<f32> = u_xlat20;
  let x_1288 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1287);
  u_xlat1 = vec3<f32>(x_1288.x, x_1288.y, x_1288.z);
  let x_1291 : f32 = u_xlat0.x;
  let x_1293 : f32 = x_26.x_Lut2D_Params.z;
  let x_1296 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1291 * x_1293) + -(x_1296));
  let x_1300 : vec4<f32> = u_xlat4;
  let x_1303 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1300.x, x_1300.y, x_1300.z)) + x_1303);
  let x_1305 : vec4<f32> = u_xlat0;
  let x_1307 : vec3<f32> = u_xlat10;
  let x_1309 : vec4<f32> = u_xlat4;
  let x_1311 : vec3<f32> = ((vec3<f32>(x_1305.x, x_1305.x, x_1305.x) * x_1307) + vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
  let x_1312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  let x_1314 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1314.x, x_1314.y, x_1314.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1318 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1318.x, x_1318.y, x_1318.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1322 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1322 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1325 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1325), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1328 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1328);
  let x_1330 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1330 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1333 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1333);
  let x_1337 : vec4<f32> = u_xlat0;
  let x_1339 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1337.x));
  u_xlatb0 = vec3<bool>(x_1339.x, x_1339.y, x_1339.z);
  let x_1342 : bool = u_xlatb0.x;
  if (x_1342) {
    let x_1347 : f32 = u_xlat1.x;
    x_1343 = x_1347;
  } else {
    let x_1350 : f32 = u_xlat2.x;
    x_1343 = x_1350;
  }
  let x_1351 : f32 = x_1343;
  u_xlat3.x = x_1351;
  let x_1354 : bool = u_xlatb0.y;
  if (x_1354) {
    let x_1359 : f32 = u_xlat1.y;
    x_1355 = x_1359;
  } else {
    let x_1362 : f32 = u_xlat2.y;
    x_1355 = x_1362;
  }
  let x_1363 : f32 = x_1355;
  u_xlat3.y = x_1363;
  let x_1366 : bool = u_xlatb0.z;
  if (x_1366) {
    let x_1371 : f32 = u_xlat1.z;
    x_1367 = x_1371;
  } else {
    let x_1374 : f32 = u_xlat2.z;
    x_1367 = x_1374;
  }
  let x_1375 : f32 = x_1367;
  u_xlat3.z = x_1375;
  let x_1378 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1378);
  let x_1382 : bool = u_xlatb0.x;
  if (x_1382) {
    let x_1385 : vec4<f32> = u_xlat3;
    let x_1386 : vec3<f32> = vec3<f32>(x_1385.x, x_1385.y, x_1385.z);
    let x_1387 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
    let x_1389 : vec4<f32> = u_xlat0;
    let x_1393 : vec3<f32> = clamp(vec3<f32>(x_1389.x, x_1389.y, x_1389.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1394 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
    let x_1396 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1396.x, x_1396.y, x_1396.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1406 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1406;
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

