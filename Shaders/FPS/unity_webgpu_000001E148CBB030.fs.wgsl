struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  x_ChromaticAberration_Amount : f32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat21 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_31 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_31.x, x_31.y, x_31.x, x_31.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec2<f32>(x_42.z, x_42.w), vec2<f32>(x_44.z, x_44.w));
  let x_48 : vec3<f32> = u_xlat7;
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_48.x, x_48.x, x_48.x, x_48.x) * x_50);
  let x_52 : vec4<f32> = u_xlat1;
  let x_60 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_62 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_64 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_66 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_67 : vec4<f32> = vec4<f32>(x_60, x_62, x_64, x_66);
  u_xlat1 = (x_52 * vec4<f32>(x_67.x, x_67.y, x_67.z, x_67.w));
  let x_83 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_84 : vec3<f32> = vec3<f32>(x_83.x, x_83.y, x_83.z);
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_93 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_94 : vec3<f32> = vec3<f32>(x_93.x, x_93.y, x_93.z);
  let x_95 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_103 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_104 : vec3<f32> = vec3<f32>(x_103.x, x_103.y, x_103.z);
  let x_105 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_107 : vec2<f32> = vs_TEXCOORD0;
  let x_108 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_107.x, x_107.y, x_108.z);
  let x_110 : vec3<f32> = u_xlat7;
  let x_115 : vec2<f32> = clamp(vec2<f32>(x_110.x, x_110.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_116 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_118 : vec3<f32> = u_xlat7;
  let x_122 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_124 : vec2<f32> = (vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_122, x_122));
  let x_125 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_133 : vec3<f32> = u_xlat7;
  let x_135 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_133.x, x_133.y), 0.0f);
  u_xlat5 = x_135;
  let x_136 : vec4<f32> = u_xlat1;
  let x_141 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_136 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_141.x, x_141.y, x_141.x, x_141.y));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_144, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat1 = (x_148 * vec4<f32>(x_150, x_150, x_150, x_150));
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_157.x, x_157.y), 0.0f);
  u_xlat6 = x_159;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_163.z, x_163.w), 0.0f);
  u_xlat1 = x_165;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_169 : vec4<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat6;
  u_xlat6 = (x_169 * x_170);
  let x_172 : vec4<f32> = u_xlat5;
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat5 = ((x_172 * x_173) + x_175);
  u_xlat4.w = 1.0f;
  let x_178 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_178 * x_179) + x_181);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = u_xlat7;
  let x_191 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + x_190);
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  u_xlat2.w = 3.0f;
  let x_196 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec2<f32> = vs_TEXCOORD1;
  let x_211 : vec4<f32> = x_55.x_Grain_Params2;
  let x_215 : vec4<f32> = x_55.x_Grain_Params2;
  let x_217 : vec2<f32> = ((x_207 * vec2<f32>(x_211.x, x_211.y)) + vec2<f32>(x_215.z, x_215.w));
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_218.w);
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_225.x, x_225.y));
  let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = vec3<f32>(x_231.x, x_231.y, x_231.z);
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = clamp(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_250 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_250);
  let x_254 : f32 = x_55.x_Grain_Params1.x;
  let x_255 : f32 = u_xlat21;
  u_xlat21 = ((x_254 * -(x_255)) + 1.0f);
  let x_259 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat2;
  let x_270 : f32 = x_55.x_Grain_Params1.y;
  let x_272 : f32 = x_55.x_Grain_Params1.y;
  let x_274 : f32 = x_55.x_Grain_Params1.y;
  let x_276 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_270, x_272, x_274));
  let x_277 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat2;
  let x_281 : f32 = u_xlat21;
  let x_284 : vec4<f32> = u_xlat0;
  let x_286 : vec3<f32> = ((vec3<f32>(x_279.x, x_279.y, x_279.z) * vec3<f32>(x_281, x_281, x_281)) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec4<f32> = u_xlat1;
  let x_293 : f32 = x_55.x_PostExposure;
  let x_295 : f32 = x_55.x_PostExposure;
  let x_297 : f32 = x_55.x_PostExposure;
  let x_299 : f32 = x_55.x_PostExposure;
  let x_300 : vec4<f32> = vec4<f32>(x_293, x_295, x_297, x_299);
  u_xlat0 = (vec4<f32>(x_289.w, x_289.x, x_289.y, x_289.z) * vec4<f32>(x_300.x, x_300.y, x_300.z, x_300.w));
  let x_307 : vec4<f32> = u_xlat0;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.y, x_307.z, x_307.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = log2(vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat1;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat1;
  let x_336 : vec3<f32> = clamp(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat1;
  let x_344 : vec2<f32> = x_55.x_Lut3D_Params;
  let x_346 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_344.y, x_344.y, x_344.y));
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_351 : f32 = x_55.x_Lut3D_Params.x;
  u_xlat22 = (x_351 * 0.5f);
  let x_353 : vec4<f32> = u_xlat1;
  let x_356 : vec2<f32> = x_55.x_Lut3D_Params;
  let x_359 : f32 = u_xlat22;
  let x_361 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_356.x, x_356.x, x_356.x)) + vec3<f32>(x_359, x_359, x_359));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec3<f32> = vec3<f32>(x_374.x, x_374.y, x_374.z);
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_375.x, x_375.y, x_375.z);
  let x_383 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_383);
  let x_385 : bool = u_xlatb1;
  if (x_385) {
    let x_388 : vec4<f32> = u_xlat0;
    let x_389 : vec3<f32> = vec3<f32>(x_388.y, x_388.z, x_388.w);
    let x_390 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
    let x_392 : vec4<f32> = u_xlat1;
    let x_396 : vec3<f32> = clamp(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_397 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_405 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_405.y, x_405.z, x_405.w, x_405.x);
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

