struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(8) var sampler_Lut3D : sampler;

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
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
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
  let x_95 : i32 = u_xlati21;
  u_xlati21 = min(x_95, 16i);
  let x_98 : i32 = u_xlati21;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat7;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
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
  let x_128 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_128;
  u_xlati_loop_1 = 0i;
  loop {
    let x_136 : i32 = u_xlati_loop_1;
    let x_137 : i32 = u_xlati21;
    if ((x_136 < x_137)) {
    } else {
      break;
    }
    let x_141 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_141);
    let x_145 : f32 = u_xlat16.x;
    u_xlat16.x = (x_145 + 0.5f);
    let x_149 : f32 = u_xlat16.x;
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = (x_149 / x_151);
    let x_154 : vec2<f32> = u_xlat8;
    u_xlat16 = x_154;
    let x_155 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_155, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_159 : vec2<f32> = u_xlat16;
    let x_161 : f32 = x_50.x_RenderViewportScaleFactor;
    u_xlat16 = (x_159 * vec2<f32>(x_161, x_161));
    let x_170 : vec2<f32> = u_xlat16;
    let x_171 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_170, 0.0f);
    u_xlat6 = x_171;
    let x_177 : vec3<f32> = u_xlat2;
    let x_179 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_177.x, x_177.y), 0.0f);
    let x_180 : vec3<f32> = vec3<f32>(x_179.x, x_179.y, x_179.z);
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_184 : vec4<f32> = u_xlat3;
    let x_186 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_183 * x_184) + x_186);
    let x_188 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_188 + x_189);
    let x_191 : vec2<f32> = u_xlat7;
    let x_192 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_191 + x_192);

    continuing {
      let x_194 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_194 + 1i);
    }
  }
  let x_196 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec2<f32> = vs_TEXCOORD1;
  let x_210 : vec4<f32> = x_50.x_Grain_Params2;
  let x_214 : vec4<f32> = x_50.x_Grain_Params2;
  let x_216 : vec2<f32> = ((x_207 * vec2<f32>(x_210.x, x_210.y)) + vec2<f32>(x_214.z, x_214.w));
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_224 : vec3<f32> = u_xlat2;
  let x_226 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_224.x, x_224.y));
  u_xlat2 = vec3<f32>(x_226.x, x_226.y, x_226.z);
  let x_228 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = vec3<f32>(x_228.x, x_228.y, x_228.z);
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat3;
  let x_236 : vec3<f32> = clamp(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_246 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_246);
  let x_250 : f32 = x_50.x_Grain_Params1.x;
  let x_251 : f32 = u_xlat21;
  u_xlat21 = ((x_250 * -(x_251)) + 1.0f);
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_255.x, x_255.y, x_255.z) * x_257);
  let x_259 : vec3<f32> = u_xlat2;
  let x_261 : f32 = x_50.x_Grain_Params1.y;
  let x_263 : f32 = x_50.x_Grain_Params1.y;
  let x_265 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_259 * vec3<f32>(x_261, x_263, x_265));
  let x_268 : vec3<f32> = u_xlat2;
  let x_269 : f32 = u_xlat21;
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec3<f32> = ((x_268 * vec3<f32>(x_269, x_269, x_269)) + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : vec4<f32> = u_xlat1;
  let x_281 : f32 = x_50.x_PostExposure;
  let x_283 : f32 = x_50.x_PostExposure;
  let x_285 : f32 = x_50.x_PostExposure;
  let x_287 : f32 = x_50.x_PostExposure;
  let x_288 : vec4<f32> = vec4<f32>(x_281, x_283, x_285, x_287);
  u_xlat0 = (vec4<f32>(x_277.w, x_277.x, x_277.y, x_277.z) * vec4<f32>(x_288.x, x_288.y, x_288.z, x_288.w));
  let x_295 : vec4<f32> = u_xlat0;
  let x_302 : vec3<f32> = ((vec3<f32>(x_295.y, x_295.z, x_295.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec3<f32> = log2(vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat1;
  let x_317 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat1;
  let x_324 : vec3<f32> = clamp(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat1;
  let x_331 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_333 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_331.y, x_331.y, x_331.y));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_338 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat22 = (x_338 * 0.5f);
  let x_340 : vec4<f32> = u_xlat1;
  let x_343 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_346 : f32 = u_xlat22;
  let x_348 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_343.x, x_343.x, x_343.x)) + vec3<f32>(x_346, x_346, x_346));
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec3<f32> = vec3<f32>(x_361.x, x_361.y, x_361.z);
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_363.x, x_362.x, x_362.y, x_362.z);
  let x_369 : f32 = x_50.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_369);
  let x_371 : bool = u_xlatb1;
  if (x_371) {
    let x_374 : vec4<f32> = u_xlat0;
    let x_375 : vec3<f32> = vec3<f32>(x_374.y, x_374.z, x_374.w);
    let x_376 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_378 : vec4<f32> = u_xlat1;
    let x_382 : vec3<f32> = clamp(vec3<f32>(x_378.x, x_378.y, x_378.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_383 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
    let x_385 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_391 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_391.y, x_391.z, x_391.w, x_391.x);
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

