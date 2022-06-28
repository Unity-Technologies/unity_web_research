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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : f32;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_201 : vec3<f32>;
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
      let x_204 : vec4<f32> = u_xlat4;
      x_201 = vec3<f32>(x_204.x, x_204.y, x_204.z);
    } else {
      let x_207 : vec3<f32> = vs_TEXCOORD5;
      x_201 = x_207;
    }
    let x_208 : vec3<f32> = x_201;
    let x_209 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
    let x_211 : vec4<f32> = u_xlat4;
    let x_216 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_218 : vec3<f32> = (vec3<f32>(x_211.x, x_211.y, x_211.z) + -(x_216));
    let x_219 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat4;
    let x_224 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) * x_224);
    let x_226 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_226.x, x_225.x, x_225.y, x_225.z);
    let x_229 : f32 = u_xlat4.y;
    u_xlat14.x = ((x_229 * 0.25f) + 0.75f);
    let x_237 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_237 * 0.5f) + 0.75f);
    let x_241 : f32 = u_xlat21;
    let x_243 : f32 = u_xlat14.x;
    u_xlat4.x = max(x_241, x_243);
    let x_254 : vec4<f32> = u_xlat4;
    let x_256 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_254.x, x_254.z, x_254.w));
    u_xlat4 = x_256;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_263 : vec4<f32> = u_xlat4;
  let x_265 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat14.x = dot(x_263, x_265);
  let x_269 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_269, 0.0f, 1.0f);
  let x_273 : vec2<f32> = u_xlat14;
  let x_277 : vec4<f32> = x_46.x_LightColor0;
  let x_279 : vec3<f32> = (vec3<f32>(x_273.x, x_273.x, x_273.x) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_283 : vec4<f32> = vs_TEXCOORD1;
  let x_286 : vec3<f32> = u_xlat3;
  u_xlat14.x = dot(-(vec3<f32>(x_283.x, x_283.y, x_283.z)), x_286);
  let x_290 : f32 = u_xlat14.x;
  let x_292 : f32 = u_xlat14.x;
  u_xlat14.x = (x_290 + x_292);
  let x_296 : vec3<f32> = u_xlat3;
  let x_297 : vec2<f32> = u_xlat14;
  let x_301 : vec4<f32> = vs_TEXCOORD1;
  u_xlat5 = ((x_296 * -(vec3<f32>(x_297.x, x_297.x, x_297.x))) + -(vec3<f32>(x_301.x, x_301.y, x_301.z)));
  let x_308 : f32 = vs_TEXCOORD2.w;
  u_xlat6.x = x_308;
  let x_311 : f32 = vs_TEXCOORD3.w;
  u_xlat6.y = x_311;
  let x_314 : f32 = vs_TEXCOORD4.w;
  u_xlat6.z = x_314;
  let x_316 : vec3<f32> = u_xlat3;
  let x_317 : vec3<f32> = u_xlat6;
  u_xlat14.x = dot(x_316, x_317);
  let x_321 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_321, 0.0f, 1.0f);
  let x_324 : vec3<f32> = u_xlat5;
  let x_325 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_324, x_325);
  let x_327 : f32 = u_xlat21;
  let x_328 : f32 = u_xlat21;
  u_xlat21 = (x_327 * x_328);
  let x_330 : f32 = u_xlat21;
  let x_331 : f32 = u_xlat21;
  u_xlat3.x = (x_330 * x_331);
  let x_335 : f32 = u_xlat0.y;
  let x_339 : f32 = x_46.x_GlossMapScale;
  u_xlat3.y = ((-(x_335) * x_339) + 1.0f);
  let x_349 : vec3<f32> = u_xlat3;
  let x_351 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_349.x, x_349.y));
  u_xlat7 = x_351.x;
  let x_353 : f32 = u_xlat7;
  u_xlat7 = (x_353 * 16.0f);
  let x_356 : vec3<f32> = u_xlat1;
  let x_357 : f32 = u_xlat7;
  u_xlat1 = (x_356 * vec3<f32>(x_357, x_357, x_357));
  let x_360 : vec3<f32> = u_xlat2;
  let x_361 : vec4<f32> = u_xlat0;
  let x_364 : vec3<f32> = u_xlat1;
  let x_365 : vec3<f32> = ((x_360 * vec3<f32>(x_361.x, x_361.x, x_361.x)) + x_364);
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_365.z);
  let x_368 : vec2<f32> = u_xlat14;
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_368.x, x_368.x, x_368.x) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_375 : vec4<f32> = u_xlat0;
  let x_377 : vec3<f32> = u_xlat1;
  let x_378 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.w) * x_377);
  let x_379 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
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

