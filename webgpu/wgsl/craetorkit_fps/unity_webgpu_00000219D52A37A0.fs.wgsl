struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_GlossMapScale : f32,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat22 : f32;
  var u_xlatb14 : bool;
  var u_xlat4 : vec4<f32>;
  var x_200 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  u_xlat2 = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_55 : vec4<f32> = x_46.x_Color;
  let x_57 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * x_57) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_62.x, x_62.x, x_62.x) * x_64) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.z;
  let x_93 : f32 = u_xlat3.x;
  u_xlat3.x = (x_91 * x_93);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat14;
  let x_108 : vec2<f32> = u_xlat14;
  u_xlat22 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat22;
  u_xlat22 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_116);
  let x_118 : vec2<f32> = u_xlat14;
  let x_121 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_118.y, x_118.y, x_118.y) * vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_125 : vec4<f32> = vs_TEXCOORD2;
  let x_127 : vec2<f32> = u_xlat14;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_127.x, x_127.x, x_127.x)) + x_130);
  let x_133 : vec4<f32> = vs_TEXCOORD4;
  let x_135 : f32 = u_xlat22;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135, x_135, x_135)) + x_138);
  let x_146 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb14 = (x_146 == 1.0f);
  let x_148 : bool = u_xlatb14;
  if (x_148) {
    let x_153 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb14 = (x_153 == 1.0f);
    let x_158 : vec3<f32> = vs_TEXCOORD5;
    let x_162 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_164 : vec3<f32> = (vec3<f32>(x_158.y, x_158.y, x_158.y) * vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_169 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_171 : vec3<f32> = vs_TEXCOORD5;
    let x_174 : vec4<f32> = u_xlat4;
    let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.x, x_171.x, x_171.x)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_180 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_182 : vec3<f32> = vs_TEXCOORD5;
    let x_185 : vec4<f32> = u_xlat4;
    let x_187 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.z, x_182.z, x_182.z)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
    let x_188 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat4;
    let x_194 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_196 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : bool = u_xlatb14;
    if (x_199) {
      let x_203 : vec4<f32> = u_xlat4;
      x_200 = vec3<f32>(x_203.x, x_203.y, x_203.z);
    } else {
      let x_206 : vec3<f32> = vs_TEXCOORD5;
      x_200 = x_206;
    }
    let x_207 : vec3<f32> = x_200;
    let x_208 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
    let x_210 : vec4<f32> = u_xlat4;
    let x_215 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_217 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) + -(x_215));
    let x_218 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_220 : vec4<f32> = u_xlat4;
    let x_223 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_224 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) * x_223);
    let x_225 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_225.x, x_224.x, x_224.y, x_224.z);
    let x_228 : f32 = u_xlat4.y;
    u_xlat14.x = ((x_228 * 0.25f) + 0.75f);
    let x_236 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_236 * 0.5f) + 0.75f);
    let x_240 : f32 = u_xlat21;
    let x_242 : f32 = u_xlat14.x;
    u_xlat4.x = max(x_240, x_242);
    let x_253 : vec4<f32> = u_xlat4;
    let x_255 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_253.x, x_253.z, x_253.w));
    u_xlat4 = x_255;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat14.x = dot(x_262, x_264);
  let x_268 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_268, 0.0f, 1.0f);
  let x_272 : vec2<f32> = u_xlat14;
  let x_276 : vec4<f32> = x_46.x_LightColor0;
  let x_278 : vec3<f32> = (vec3<f32>(x_272.x, x_272.x, x_272.x) * vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : vec4<f32> = vs_TEXCOORD1;
  let x_285 : vec3<f32> = u_xlat3;
  u_xlat14.x = dot(-(vec3<f32>(x_282.x, x_282.y, x_282.z)), x_285);
  let x_289 : f32 = u_xlat14.x;
  let x_291 : f32 = u_xlat14.x;
  u_xlat14.x = (x_289 + x_291);
  let x_295 : vec3<f32> = u_xlat3;
  let x_296 : vec2<f32> = u_xlat14;
  let x_300 : vec4<f32> = vs_TEXCOORD1;
  u_xlat5 = ((x_295 * -(vec3<f32>(x_296.x, x_296.x, x_296.x))) + -(vec3<f32>(x_300.x, x_300.y, x_300.z)));
  let x_307 : f32 = vs_TEXCOORD2.w;
  u_xlat6.x = x_307;
  let x_310 : f32 = vs_TEXCOORD3.w;
  u_xlat6.y = x_310;
  let x_313 : f32 = vs_TEXCOORD4.w;
  u_xlat6.z = x_313;
  let x_315 : vec3<f32> = u_xlat3;
  let x_316 : vec3<f32> = u_xlat6;
  u_xlat14.x = dot(x_315, x_316);
  let x_320 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_320, 0.0f, 1.0f);
  let x_323 : vec3<f32> = u_xlat5;
  let x_324 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_323, x_324);
  let x_326 : f32 = u_xlat21;
  let x_327 : f32 = u_xlat21;
  u_xlat21 = (x_326 * x_327);
  let x_329 : f32 = u_xlat21;
  let x_330 : f32 = u_xlat21;
  u_xlat3.x = (x_329 * x_330);
  let x_334 : f32 = u_xlat0.y;
  let x_338 : f32 = x_46.x_GlossMapScale;
  u_xlat3.y = ((-(x_334) * x_338) + 1.0f);
  let x_348 : vec3<f32> = u_xlat3;
  let x_350 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_348.x, x_348.y));
  u_xlat7 = x_350.x;
  let x_352 : f32 = u_xlat7;
  u_xlat7 = (x_352 * 16.0f);
  let x_355 : vec3<f32> = u_xlat1;
  let x_356 : f32 = u_xlat7;
  u_xlat1 = (x_355 * vec3<f32>(x_356, x_356, x_356));
  let x_359 : vec3<f32> = u_xlat2;
  let x_360 : vec4<f32> = u_xlat0;
  let x_363 : vec3<f32> = u_xlat1;
  let x_364 : vec3<f32> = ((x_359 * vec3<f32>(x_360.x, x_360.x, x_360.x)) + x_363);
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_364.z);
  let x_367 : vec2<f32> = u_xlat14;
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_367.x, x_367.x, x_367.x) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = u_xlat1;
  let x_375 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.w) * x_374);
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = vs_TEXCOORD1.w;
  u_xlat21 = x_379;
  let x_380 : f32 = u_xlat21;
  u_xlat21 = clamp(x_380, 0.0f, 1.0f);
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : f32 = u_xlat21;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386, x_386, x_386));
  let x_389 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

