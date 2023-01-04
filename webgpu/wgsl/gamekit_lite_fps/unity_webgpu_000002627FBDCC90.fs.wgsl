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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
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
    let x_155 : vec2<f32> = u_xlat8;
    u_xlat16 = x_155;
    let x_156 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_156, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_160 : vec2<f32> = u_xlat16;
    let x_162 : f32 = x_50.x_RenderViewportScaleFactor;
    u_xlat16 = (x_160 * vec2<f32>(x_162, x_162));
    let x_171 : vec2<f32> = u_xlat16;
    let x_172 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_171, 0.0f);
    u_xlat6 = x_172;
    let x_178 : vec3<f32> = u_xlat2;
    let x_180 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_178.x, x_178.y), 0.0f);
    let x_181 : vec3<f32> = vec3<f32>(x_180.x, x_180.y, x_180.z);
    let x_182 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat6;
    let x_185 : vec4<f32> = u_xlat3;
    let x_187 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_184 * x_185) + x_187);
    let x_189 : vec4<f32> = u_xlat3;
    let x_190 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_189 + x_190);
    let x_192 : vec2<f32> = u_xlat7;
    let x_193 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_192 + x_193);

    continuing {
      let x_195 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_195 + 1i);
    }
  }
  let x_197 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_197 / x_198);
  let x_200 : vec4<f32> = u_xlat0;
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec3<f32> = (vec3<f32>(x_200.x, x_200.x, x_200.x) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : vec2<f32> = vs_TEXCOORD1;
  let x_211 : vec4<f32> = x_50.x_Grain_Params2;
  let x_215 : vec4<f32> = x_50.x_Grain_Params2;
  let x_217 : vec2<f32> = ((x_208 * vec2<f32>(x_211.x, x_211.y)) + vec2<f32>(x_215.z, x_215.w));
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_225 : vec3<f32> = u_xlat2;
  let x_227 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_225.x, x_225.y));
  u_xlat2 = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_229 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = vec3<f32>(x_229.x, x_229.y, x_229.z);
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = clamp(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_247 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_247);
  let x_251 : f32 = x_50.x_Grain_Params1.x;
  let x_252 : f32 = u_xlat21;
  u_xlat21 = ((x_251 * -(x_252)) + 1.0f);
  let x_256 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_256.x, x_256.y, x_256.z) * x_258);
  let x_260 : vec3<f32> = u_xlat2;
  let x_262 : f32 = x_50.x_Grain_Params1.y;
  let x_264 : f32 = x_50.x_Grain_Params1.y;
  let x_266 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_260 * vec3<f32>(x_262, x_264, x_266));
  let x_269 : vec3<f32> = u_xlat2;
  let x_270 : f32 = u_xlat21;
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = ((x_269 * vec3<f32>(x_270, x_270, x_270)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat1;
  let x_282 : f32 = x_50.x_PostExposure;
  let x_284 : f32 = x_50.x_PostExposure;
  let x_286 : f32 = x_50.x_PostExposure;
  let x_288 : f32 = x_50.x_PostExposure;
  let x_289 : vec4<f32> = vec4<f32>(x_282, x_284, x_286, x_288);
  u_xlat0 = (vec4<f32>(x_278.w, x_278.x, x_278.y, x_278.z) * vec4<f32>(x_289.x, x_289.y, x_289.z, x_289.w));
  let x_296 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296.y, x_296.z, x_296.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat1;
  let x_308 : vec3<f32> = log2(vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat1;
  let x_325 : vec3<f32> = clamp(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat1;
  let x_332 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_334 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_332.y, x_332.y, x_332.y));
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_339 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat22 = (x_339 * 0.5f);
  let x_341 : vec4<f32> = u_xlat1;
  let x_344 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_347 : f32 = u_xlat22;
  let x_349 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_344.x, x_344.x, x_344.x)) + vec3<f32>(x_347, x_347, x_347));
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec3<f32> = vec3<f32>(x_362.x, x_362.y, x_362.z);
  let x_364 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_364.x, x_363.x, x_363.y, x_363.z);
  let x_370 : f32 = x_50.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_370);
  let x_372 : bool = u_xlatb1;
  if (x_372) {
    let x_375 : vec4<f32> = u_xlat0;
    let x_376 : vec3<f32> = vec3<f32>(x_375.y, x_375.z, x_375.w);
    let x_377 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
    let x_379 : vec4<f32> = u_xlat1;
    let x_383 : vec3<f32> = clamp(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_384 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_392 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_392.y, x_392.z, x_392.w, x_392.x);
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

