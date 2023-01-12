struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_293 : f32;
  var x_305 : f32;
  var x_317 : f32;
  var x_369 : f32;
  var x_382 : f32;
  var x_394 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_33 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_41 : vec2<f32> = u_xlat7;
  let x_42 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_41, x_42);
  let x_44 : f32 = u_xlat21;
  let x_46 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_44, x_44) * x_46);
  let x_48 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_48 * vec2<f32>(x_59.x, x_59.y));
  let x_66 : vec2<f32> = u_xlat7;
  let x_71 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_73 : vec2<f32> = (-(x_66) * vec2<f32>(x_71.z, x_71.w));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_80 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) * vec2<f32>(0.5f, 0.5f));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_81.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_83.x, x_83.y), vec2<f32>(x_85.x, x_85.y));
  let x_88 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_88);
  let x_92 : f32 = u_xlat21;
  u_xlati21 = i32(x_92);
  let x_94 : i32 = u_xlati21;
  u_xlati21 = max(x_94, 3i);
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
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
  u_xlat8 = x_127;
  u_xlati_loop_1 = 0i;
  loop {
    let x_135 : i32 = u_xlati_loop_1;
    let x_136 : i32 = u_xlati21;
    if ((x_135 < x_136)) {
    } else {
      break;
    }
    let x_140 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_140);
    let x_144 : f32 = u_xlat16.x;
    u_xlat16.x = (x_144 + 0.5f);
    let x_148 : f32 = u_xlat16.x;
    let x_150 : f32 = u_xlat1.x;
    u_xlat2.x = (x_148 / x_150);
    let x_153 : vec2<f32> = u_xlat8;
    u_xlat16 = x_153;
    let x_154 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_154, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_158 : vec2<f32> = u_xlat16;
    let x_160 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_158 * vec2<f32>(x_160, x_160));
    let x_169 : vec2<f32> = u_xlat16;
    let x_170 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_169, 0.0f);
    u_xlat6 = x_170;
    let x_176 : vec3<f32> = u_xlat2;
    let x_178 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_176.x, x_176.y), 0.0f);
    let x_179 : vec3<f32> = vec3<f32>(x_178.x, x_178.y, x_178.z);
    let x_180 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat6;
    let x_183 : vec4<f32> = u_xlat3;
    let x_185 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_182 * x_183) + x_185);
    let x_187 : vec4<f32> = u_xlat3;
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_187 + x_188);
    let x_190 : vec2<f32> = u_xlat7;
    let x_191 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_190 + x_191);

    continuing {
      let x_193 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_193 + 1i);
    }
  }
  let x_196 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec3<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec2<f32> = vs_TEXCOORD0;
  let x_206 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_210 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_212 : vec2<f32> = ((x_204 * vec2<f32>(x_206.x, x_206.y)) + vec2<f32>(x_210.z, x_210.w));
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_213.z, x_213.w);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_220.x, x_220.y));
  u_xlat21 = x_222.w;
  let x_224 : f32 = u_xlat21;
  u_xlat21 = ((x_224 * 2.0f) + -1.0f);
  let x_227 : f32 = u_xlat21;
  u_xlat1.x = ((x_227 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_233 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_233, 0.0f, 1.0f);
  let x_237 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_237 * 2.0f) + -1.0f);
  let x_241 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_241)) + 1.0f);
  let x_245 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_245);
  let x_247 : f32 = u_xlat21;
  u_xlat21 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat21;
  let x_252 : f32 = u_xlat1.x;
  u_xlat21 = (x_250 * x_252);
  let x_254 : vec3<f32> = u_xlat0;
  let x_257 : vec3<f32> = (x_254 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_260), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_265 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_265);
  let x_267 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_267 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_271 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_271);
  let x_273 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_273 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_285 : vec3<f32> = u_xlat0;
  let x_288 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_285.x, x_285.y, x_285.z, x_285.x));
  u_xlatb0 = vec3<bool>(x_288.x, x_288.y, x_288.z);
  let x_292 : bool = u_xlatb0.x;
  if (x_292) {
    let x_297 : f32 = u_xlat1.x;
    x_293 = x_297;
  } else {
    let x_300 : f32 = u_xlat2.x;
    x_293 = x_300;
  }
  let x_301 : f32 = x_293;
  u_xlat0.x = x_301;
  let x_304 : bool = u_xlatb0.y;
  if (x_304) {
    let x_309 : f32 = u_xlat1.y;
    x_305 = x_309;
  } else {
    let x_312 : f32 = u_xlat2.y;
    x_305 = x_312;
  }
  let x_313 : f32 = x_305;
  u_xlat0.y = x_313;
  let x_316 : bool = u_xlatb0.z;
  if (x_316) {
    let x_321 : f32 = u_xlat1.z;
    x_317 = x_321;
  } else {
    let x_324 : f32 = u_xlat2.z;
    x_317 = x_324;
  }
  let x_325 : f32 = x_317;
  u_xlat0.z = x_325;
  let x_327 : f32 = u_xlat21;
  let x_332 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_327, x_327, x_327) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_332);
  let x_334 : vec3<f32> = u_xlat0;
  let x_337 : vec3<f32> = (x_334 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_340 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_344 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_344 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_348 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_348), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_351 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_351);
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_353 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_357 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_357);
  let x_361 : vec3<f32> = u_xlat0;
  let x_363 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_361.x, x_361.y, x_361.z, x_361.x));
  u_xlatb0 = vec3<bool>(x_363.x, x_363.y, x_363.z);
  let x_368 : bool = u_xlatb0.x;
  if (x_368) {
    let x_373 : f32 = u_xlat1.x;
    x_369 = x_373;
  } else {
    let x_376 : f32 = u_xlat2.x;
    x_369 = x_376;
  }
  let x_377 : f32 = x_369;
  SV_Target0.x = x_377;
  let x_381 : bool = u_xlatb0.y;
  if (x_381) {
    let x_386 : f32 = u_xlat1.y;
    x_382 = x_386;
  } else {
    let x_389 : f32 = u_xlat2.y;
    x_382 = x_389;
  }
  let x_390 : f32 = x_382;
  SV_Target0.y = x_390;
  let x_393 : bool = u_xlatb0.z;
  if (x_393) {
    let x_398 : f32 = u_xlat1.z;
    x_394 = x_398;
  } else {
    let x_401 : f32 = u_xlat2.z;
    x_394 = x_401;
  }
  let x_402 : f32 = x_394;
  SV_Target0.z = x_402;
  let x_405 : f32 = u_xlat1.w;
  SV_Target0.w = x_405;
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

