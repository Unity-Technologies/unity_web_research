struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_401 : f32;
  var x_413 : f32;
  var x_425 : f32;
  var x_482 : f32;
  var x_495 : f32;
  var x_507 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_55 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_57 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_58 : vec2<f32> = vec2<f32>(x_55, x_57);
  u_xlat7 = (x_47 * vec2<f32>(x_58.x, x_58.y));
  let x_64 : vec2<f32> = u_xlat7;
  let x_69 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_71 : vec2<f32> = (-(x_64) * vec2<f32>(x_69.z, x_69.w));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec2<f32> = (vec2<f32>(x_74.x, x_74.y) * vec2<f32>(0.5f, 0.5f));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_81.x, x_81.y), vec2<f32>(x_83.x, x_83.y));
  let x_86 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_86);
  let x_90 : f32 = u_xlat21;
  u_xlati21 = i32(x_90);
  let x_92 : i32 = u_xlati21;
  u_xlati21 = max(x_92, 3i);
  let x_94 : i32 = u_xlati21;
  u_xlati21 = min(x_94, 16i);
  let x_97 : i32 = u_xlati21;
  u_xlat1.x = f32(x_97);
  let x_100 : vec2<f32> = u_xlat7;
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_100) / vec2<f32>(x_102.x, x_102.x));
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
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  let x_128 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_127.x, x_127.y, x_128.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_137 : i32 = u_xlati_loop_1;
    let x_138 : i32 = u_xlati21;
    if ((x_137 < x_138)) {
    } else {
      break;
    }
    let x_142 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_142);
    let x_146 : f32 = u_xlat16.x;
    u_xlat16.x = (x_146 + 0.5f);
    let x_150 : f32 = u_xlat16.x;
    let x_152 : f32 = u_xlat1.x;
    u_xlat2.x = (x_150 / x_152);
    let x_155 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_155.x, x_155.y);
    let x_157 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_157, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_161 : vec2<f32> = u_xlat16;
    let x_163 : f32 = x_50.x_RenderViewportScaleFactor;
    u_xlat16 = (x_161 * vec2<f32>(x_163, x_163));
    let x_172 : vec2<f32> = u_xlat16;
    let x_173 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_172, 0.0f);
    u_xlat6 = x_173;
    let x_179 : vec3<f32> = u_xlat2;
    let x_181 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_179.x, x_179.y), 0.0f);
    let x_182 : vec3<f32> = vec3<f32>(x_181.x, x_181.y, x_181.z);
    let x_183 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
    let x_185 : vec4<f32> = u_xlat6;
    let x_186 : vec4<f32> = u_xlat3;
    let x_188 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_185 * x_186) + x_188);
    let x_190 : vec4<f32> = u_xlat3;
    let x_191 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_190 + x_191);
    let x_193 : vec2<f32> = u_xlat7;
    let x_194 : vec3<f32> = u_xlat8;
    let x_196 : vec2<f32> = (x_193 + vec2<f32>(x_194.x, x_194.y));
    let x_197 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_196.x, x_196.y, x_197.z);

    continuing {
      let x_199 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_199 + 1i);
    }
  }
  let x_202 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_202 / x_203);
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat1;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.x, x_205.x) * vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat1;
  let x_215 : f32 = x_50.x_PostExposure;
  let x_217 : f32 = x_50.x_PostExposure;
  let x_219 : f32 = x_50.x_PostExposure;
  let x_221 : f32 = x_50.x_PostExposure;
  let x_222 : vec4<f32> = vec4<f32>(x_215, x_217, x_219, x_221);
  u_xlat0 = (x_212 * vec4<f32>(x_222.x, x_222.y, x_222.z, x_222.w));
  let x_229 : vec4<f32> = u_xlat0;
  let x_236 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = log2(vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = clamp(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat0;
  let x_266 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_268 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_266.y, x_266.y, x_266.y));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat1.x = (x_272 * 0.5f);
  let x_275 : vec4<f32> = u_xlat0;
  let x_278 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_278.x, x_278.x, x_278.x)) + vec3<f32>(x_281.x, x_281.x, x_281.x));
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec3<f32> = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_298 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec2<f32> = vs_TEXCOORD0;
  let x_302 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_306 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_308 : vec2<f32> = ((x_300 * vec2<f32>(x_302.x, x_302.y)) + vec2<f32>(x_306.z, x_306.w));
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_309.z, x_309.w);
  let x_316 : vec4<f32> = u_xlat1;
  let x_318 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_316.x, x_316.y));
  u_xlat1.x = x_318.w;
  let x_322 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_322 * 2.0f) + -1.0f);
  let x_327 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_327 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_333 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_333, 0.0f, 1.0f);
  let x_337 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_337 * 2.0f) + -1.0f);
  let x_342 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_342)) + 1.0f);
  let x_348 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_348);
  let x_352 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_352) + 1.0f);
  let x_357 : f32 = u_xlat1.x;
  let x_359 : f32 = u_xlat8.x;
  u_xlat1.x = (x_357 * x_359);
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_367.x, x_367.y, x_367.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_373 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_373);
  let x_375 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_375 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_379 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_379);
  let x_381 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_381 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_393 : vec4<f32> = u_xlat0;
  let x_396 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_393.x, x_393.y, x_393.z, x_393.x));
  u_xlatb0 = vec3<bool>(x_396.x, x_396.y, x_396.z);
  let x_400 : bool = u_xlatb0.x;
  if (x_400) {
    let x_405 : f32 = u_xlat8.x;
    x_401 = x_405;
  } else {
    let x_408 : f32 = u_xlat2.x;
    x_401 = x_408;
  }
  let x_409 : f32 = x_401;
  u_xlat0.x = x_409;
  let x_412 : bool = u_xlatb0.y;
  if (x_412) {
    let x_417 : f32 = u_xlat8.y;
    x_413 = x_417;
  } else {
    let x_420 : f32 = u_xlat2.y;
    x_413 = x_420;
  }
  let x_421 : f32 = x_413;
  u_xlat0.y = x_421;
  let x_424 : bool = u_xlatb0.z;
  if (x_424) {
    let x_429 : f32 = u_xlat8.z;
    x_425 = x_429;
  } else {
    let x_432 : f32 = u_xlat2.z;
    x_425 = x_432;
  }
  let x_433 : f32 = x_425;
  u_xlat0.z = x_433;
  let x_435 : vec4<f32> = u_xlat1;
  let x_440 : vec4<f32> = u_xlat0;
  let x_442 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.x, x_435.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_452.x, x_452.y, x_452.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_457 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_457 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_461 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_461), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_464 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_464);
  let x_466 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_466 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_470 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_470);
  let x_474 : vec4<f32> = u_xlat0;
  let x_476 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_474.x, x_474.y, x_474.z, x_474.x));
  u_xlatb0 = vec3<bool>(x_476.x, x_476.y, x_476.z);
  let x_481 : bool = u_xlatb0.x;
  if (x_481) {
    let x_486 : f32 = u_xlat1.x;
    x_482 = x_486;
  } else {
    let x_489 : f32 = u_xlat2.x;
    x_482 = x_489;
  }
  let x_490 : f32 = x_482;
  SV_Target0.x = x_490;
  let x_494 : bool = u_xlatb0.y;
  if (x_494) {
    let x_499 : f32 = u_xlat1.y;
    x_495 = x_499;
  } else {
    let x_502 : f32 = u_xlat2.y;
    x_495 = x_502;
  }
  let x_503 : f32 = x_495;
  SV_Target0.y = x_503;
  let x_506 : bool = u_xlatb0.z;
  if (x_506) {
    let x_511 : f32 = u_xlat1.z;
    x_507 = x_511;
  } else {
    let x_514 : f32 = u_xlat2.z;
    x_507 = x_514;
  }
  let x_515 : f32 = x_507;
  SV_Target0.z = x_515;
  let x_518 : f32 = u_xlat0.w;
  SV_Target0.w = x_518;
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

