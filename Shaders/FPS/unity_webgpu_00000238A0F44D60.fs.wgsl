struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(0) var<uniform> x_58 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati30 : i32;

var<private> u_xlatb11 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat21 : vec2<f32>;

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

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> u_xlat20 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_327 : f32;
  var x_460 : f32;
  var x_472 : f32;
  var x_484 : f32;
  var x_626 : f32;
  var x_638 : f32;
  var x_650 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat10;
  let x_44 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat30;
  let x_49 : vec3<f32> = u_xlat10;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat10;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat10;
  let x_81 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_98);
  let x_102 : f32 = u_xlat30;
  u_xlati30 = i32(x_102);
  let x_104 : i32 = u_xlati30;
  u_xlati30 = max(x_104, 3i);
  let x_106 : i32 = u_xlati30;
  u_xlati30 = min(x_106, 16i);
  let x_109 : i32 = u_xlati30;
  u_xlat1.x = f32(x_109);
  let x_112 : vec3<f32> = u_xlat10;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec2<f32> = (-(vec2<f32>(x_112.x, x_112.y)) / vec2<f32>(x_115.x, x_115.x));
  let x_118 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_117.x, x_117.y, x_118.z);
  let x_127 : f32 = x_58.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_127);
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
  let x_150 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_150;
  u_xlati_loop_1 = 0i;
  loop {
    let x_159 : i32 = u_xlati_loop_1;
    let x_160 : i32 = u_xlati30;
    if ((x_159 < x_160)) {
    } else {
      break;
    }
    let x_163 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_163);
    let x_167 : f32 = u_xlat16.x;
    u_xlat16.x = (x_167 + 0.5f);
    let x_171 : f32 = u_xlat16.x;
    let x_173 : f32 = u_xlat1.x;
    u_xlat2.x = (x_171 / x_173);
    let x_176 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_176 + vec2<f32>(-0.5f, -0.5f));
    let x_181 : vec2<f32> = u_xlat16;
    let x_183 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_186 : vec2<f32> = ((x_181 * vec2<f32>(x_183.z, x_183.z)) + vec2<f32>(0.5f, 0.5f));
    let x_187 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
    let x_189 : vec2<f32> = u_xlat16;
    let x_191 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_196 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = ((x_189 * vec2<f32>(x_191.z, x_191.z)) + -(vec2<f32>(x_196.x, x_196.y)));
    let x_200 : vec2<f32> = u_xlat16;
    let x_202 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = (x_200 * vec2<f32>(x_202.z, x_202.w));
    let x_206 : vec2<f32> = u_xlat16;
    let x_207 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_206, x_207);
    let x_209 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_209);
    let x_211 : bool = u_xlatb11;
    if (x_211) {
      let x_215 : f32 = u_xlat36;
      let x_218 : vec4<f32> = x_58.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_215, x_215) * vec2<f32>(x_218.x, x_218.y));
      let x_223 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_223);
      let x_227 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_227);
      let x_229 : f32 = u_xlat8;
      let x_230 : f32 = u_xlat9;
      u_xlat27.x = (x_229 / x_230);
      let x_235 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_235);
      let x_238 : f32 = u_xlat27.x;
      let x_239 : f32 = u_xlat37;
      u_xlat27.x = ((x_238 * x_239) + -1.0f);
      let x_243 : vec2<f32> = u_xlat16;
      let x_244 : vec2<f32> = u_xlat27;
      let x_247 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_243 * vec2<f32>(x_244.x, x_244.x)) + vec2<f32>(x_247.x, x_247.y));
    } else {
      let x_251 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_251);
      let x_253 : f32 = u_xlat8;
      let x_255 : f32 = x_58.x_Distortion_Amount.x;
      u_xlat8 = (x_253 * x_255);
      let x_257 : f32 = u_xlat36;
      let x_259 : f32 = x_58.x_Distortion_Amount.y;
      u_xlat36 = (x_257 * x_259);
      let x_262 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_262), 1.0f);
      let x_266 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_266), 1.0f);
      let x_269 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_269);
      let x_271 : f32 = u_xlat28;
      let x_272 : f32 = u_xlat18;
      u_xlat18 = (x_271 * x_272);
      let x_274 : f32 = u_xlat18;
      let x_275 : f32 = u_xlat18;
      u_xlat28 = (x_274 * x_275);
      let x_278 : f32 = u_xlat28;
      u_xlat38 = ((x_278 * 0.0208351f) + -0.085133001f);
      let x_283 : f32 = u_xlat28;
      let x_284 : f32 = u_xlat38;
      u_xlat38 = ((x_283 * x_284) + 0.180141002f);
      let x_288 : f32 = u_xlat28;
      let x_289 : f32 = u_xlat38;
      u_xlat38 = ((x_288 * x_289) + -0.330299497f);
      let x_293 : f32 = u_xlat28;
      let x_294 : f32 = u_xlat38;
      u_xlat28 = ((x_293 * x_294) + 0.999866009f);
      let x_298 : f32 = u_xlat28;
      let x_299 : f32 = u_xlat18;
      u_xlat38 = (x_298 * x_299);
      let x_302 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_302));
      let x_305 : f32 = u_xlat38;
      u_xlat38 = ((x_305 * -2.0f) + 1.570796371f);
      let x_310 : bool = u_xlatb9;
      let x_311 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_311, x_310);
      let x_313 : f32 = u_xlat18;
      let x_314 : f32 = u_xlat28;
      let x_316 : f32 = u_xlat38;
      u_xlat18 = ((x_313 * x_314) + x_316);
      let x_318 : f32 = u_xlat36;
      u_xlat36 = min(x_318, 1.0f);
      let x_321 : f32 = u_xlat36;
      let x_322 : f32 = u_xlat36;
      u_xlatb36 = (x_321 < -(x_322));
      let x_325 : bool = u_xlatb36;
      if (x_325) {
        let x_330 : f32 = u_xlat18;
        x_327 = -(x_330);
      } else {
        let x_333 : f32 = u_xlat18;
        x_327 = x_333;
      }
      let x_334 : f32 = x_327;
      u_xlat36 = x_334;
      let x_335 : f32 = u_xlat8;
      let x_336 : f32 = u_xlat36;
      u_xlat36 = ((x_335 * x_336) + -1.0f);
      let x_339 : vec2<f32> = u_xlat16;
      let x_340 : f32 = u_xlat36;
      let x_343 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_339 * vec2<f32>(x_340, x_340)) + vec2<f32>(x_343.x, x_343.y));
    }
    let x_346 : vec2<f32> = u_xlat27;
    u_xlat27 = x_346;
    let x_347 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_347, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_351 : vec2<f32> = u_xlat27;
    let x_353 : f32 = x_58.x_RenderViewportScaleFactor;
    u_xlat16 = (x_351 * vec2<f32>(x_353, x_353));
    let x_361 : vec2<f32> = u_xlat16;
    let x_362 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_361, 0.0f);
    u_xlat7 = x_362;
    let x_368 : vec3<f32> = u_xlat2;
    let x_370 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_368.x, x_368.y), 0.0f);
    let x_371 : vec3<f32> = vec3<f32>(x_370.x, x_370.y, x_370.z);
    let x_372 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : vec4<f32> = u_xlat7;
    let x_375 : vec4<f32> = u_xlat3;
    let x_377 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_374 * x_375) + x_377);
    let x_379 : vec4<f32> = u_xlat3;
    let x_380 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_379 + x_380);
    let x_382 : vec3<f32> = u_xlat10;
    let x_384 : vec2<f32> = u_xlat21;
    u_xlat21 = (vec2<f32>(x_382.x, x_382.y) + x_384);

    continuing {
      let x_386 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_386 + 1i);
    }
  }
  let x_388 : vec4<f32> = u_xlat4;
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_388 / x_389);
  let x_391 : vec3<f32> = u_xlat0;
  let x_393 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_391.x, x_391.x, x_391.x) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_396, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_401 : f32 = u_xlat1.w;
  u_xlat1.w = x_401;
  let x_404 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_404, 0.0f, 1.0f);
  let x_407 : vec3<f32> = u_xlat0;
  let x_411 : vec3<f32> = (vec3<f32>(x_407.z, x_407.x, x_407.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec3<f32> = u_xlat0;
  let x_418 : vec3<f32> = max(vec3<f32>(x_414.z, x_414.x, x_414.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec3<f32> = log2(vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat4;
  let x_430 : vec3<f32> = (vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat4;
  let x_435 : vec3<f32> = exp2(vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat4;
  let x_445 : vec3<f32> = ((vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_453 : vec3<f32> = u_xlat0;
  let x_456 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_453.z, x_453.x, x_453.y, x_453.z));
  u_xlatb0 = vec3<bool>(x_456.x, x_456.y, x_456.z);
  let x_459 : bool = u_xlatb0.x;
  if (x_459) {
    let x_464 : f32 = u_xlat3.x;
    x_460 = x_464;
  } else {
    let x_467 : f32 = u_xlat4.x;
    x_460 = x_467;
  }
  let x_468 : f32 = x_460;
  u_xlat0.x = x_468;
  let x_471 : bool = u_xlatb0.y;
  if (x_471) {
    let x_476 : f32 = u_xlat3.y;
    x_472 = x_476;
  } else {
    let x_479 : f32 = u_xlat4.y;
    x_472 = x_479;
  }
  let x_480 : f32 = x_472;
  u_xlat0.y = x_480;
  let x_483 : bool = u_xlatb0.z;
  if (x_483) {
    let x_488 : f32 = u_xlat3.z;
    x_484 = x_488;
  } else {
    let x_491 : f32 = u_xlat4.z;
    x_484 = x_491;
  }
  let x_492 : f32 = x_484;
  u_xlat0.z = x_492;
  let x_494 : vec3<f32> = u_xlat0;
  let x_498 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat10 = (x_494 * vec3<f32>(x_498.z, x_498.z, x_498.z));
  let x_502 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_502);
  let x_506 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_508 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) * vec2<f32>(0.5f, 0.5f));
  let x_509 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_508.x, x_508.y, x_509.z);
  let x_511 : vec3<f32> = u_xlat10;
  let x_514 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_517 : vec3<f32> = u_xlat2;
  let x_519 : vec2<f32> = ((vec2<f32>(x_511.y, x_511.z) * vec2<f32>(x_514.x, x_514.y)) + vec2<f32>(x_517.x, x_517.y));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_520.x, x_519.x, x_519.y, x_520.w);
  let x_523 : f32 = u_xlat10.x;
  let x_525 : f32 = x_58.x_Lut2D_Params.y;
  let x_528 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_523 * x_525) + x_528);
  let x_536 : vec4<f32> = u_xlat3;
  let x_538 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_536.x, x_536.z));
  let x_539 : vec3<f32> = vec3<f32>(x_538.x, x_538.y, x_538.z);
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_543 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat22.x = x_543;
  let x_546 : vec2<f32> = u_xlat22;
  let x_547 : vec4<f32> = u_xlat3;
  u_xlat20 = (x_546 + vec2<f32>(x_547.x, x_547.z));
  let x_553 : vec2<f32> = u_xlat20;
  let x_554 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_553);
  u_xlat2 = vec3<f32>(x_554.x, x_554.y, x_554.z);
  let x_557 : f32 = u_xlat0.x;
  let x_559 : f32 = x_58.x_Lut2D_Params.z;
  let x_562 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_557 * x_559) + -(x_562));
  let x_566 : vec4<f32> = u_xlat4;
  let x_569 : vec3<f32> = u_xlat2;
  u_xlat10 = (-(vec3<f32>(x_566.x, x_566.y, x_566.z)) + x_569);
  let x_571 : vec3<f32> = u_xlat0;
  let x_573 : vec3<f32> = u_xlat10;
  let x_575 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_571.x, x_571.x, x_571.x) * x_573) + vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_578 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_582 : vec3<f32> = u_xlat0;
  let x_585 : vec3<f32> = (x_582 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_586 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat3;
  let x_592 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_593 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat3;
  let x_598 : vec3<f32> = max(abs(vec3<f32>(x_595.x, x_595.y, x_595.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_599 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat3;
  let x_603 : vec3<f32> = log2(vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat3;
  let x_610 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_611 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat3;
  let x_615 : vec3<f32> = exp2(vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_620 : vec3<f32> = u_xlat0;
  let x_622 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_620.x, x_620.y, x_620.z, x_620.x));
  u_xlatb0 = vec3<bool>(x_622.x, x_622.y, x_622.z);
  let x_625 : bool = u_xlatb0.x;
  if (x_625) {
    let x_630 : f32 = u_xlat2.x;
    x_626 = x_630;
  } else {
    let x_633 : f32 = u_xlat3.x;
    x_626 = x_633;
  }
  let x_634 : f32 = x_626;
  u_xlat1.x = x_634;
  let x_637 : bool = u_xlatb0.y;
  if (x_637) {
    let x_642 : f32 = u_xlat2.y;
    x_638 = x_642;
  } else {
    let x_645 : f32 = u_xlat3.y;
    x_638 = x_645;
  }
  let x_646 : f32 = x_638;
  u_xlat1.y = x_646;
  let x_649 : bool = u_xlatb0.z;
  if (x_649) {
    let x_654 : f32 = u_xlat2.z;
    x_650 = x_654;
  } else {
    let x_657 : f32 = u_xlat3.z;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  u_xlat1.z = x_658;
  let x_662 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_662);
  let x_666 : bool = u_xlatb0.x;
  if (x_666) {
    let x_669 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_669.x, x_669.y, x_669.z);
    let x_671 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_671, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_675 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_675, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_684 : vec4<f32> = u_xlat1;
  SV_Target0 = x_684;
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

