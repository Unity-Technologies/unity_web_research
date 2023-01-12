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
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb18 : bool;
  var u_xlat3 : vec4<f32>;
  var x_164 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (vec4<f32>(x_27.w, x_27.x, x_27.y, x_27.z) * vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_33.x_Color;
  let x_49 : vec3<f32> = ((vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_44.x, x_44.y, x_44.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_55 : f32 = x_33.x_Metallic;
  let x_57 : f32 = x_33.x_Metallic;
  let x_59 : f32 = x_33.x_Metallic;
  let x_60 : vec3<f32> = vec3<f32>(x_55, x_57, x_59);
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_65.x, x_65.y, x_65.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_76 : f32 = x_33.x_Metallic;
  u_xlat18 = ((-(x_76) * 0.959999979f) + 0.959999979f);
  let x_83 : f32 = u_xlat18;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_83, x_83, x_83) * vec3<f32>(x_85.y, x_85.z, x_85.w));
  let x_89 : vec4<f32> = vs_TEXCOORD4;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat18 = dot(vec3<f32>(x_89.x, x_89.y, x_89.z), vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_94);
  let x_97 : f32 = u_xlat18;
  let x_99 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_97, x_97, x_97) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_109 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_109 == 1.0f);
  let x_112 : bool = u_xlatb18;
  if (x_112) {
    let x_117 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_117 == 1.0f);
    let x_122 : vec3<f32> = vs_TEXCOORD5;
    let x_126 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_128 : vec3<f32> = (vec3<f32>(x_122.y, x_122.y, x_122.y) * vec3<f32>(x_126.x, x_126.y, x_126.z));
    let x_129 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
    let x_133 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_135 : vec3<f32> = vs_TEXCOORD5;
    let x_138 : vec4<f32> = u_xlat3;
    let x_140 : vec3<f32> = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135.x, x_135.x, x_135.x)) + vec3<f32>(x_138.x, x_138.y, x_138.z));
    let x_141 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
    let x_144 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_146 : vec3<f32> = vs_TEXCOORD5;
    let x_149 : vec4<f32> = u_xlat3;
    let x_151 : vec3<f32> = ((vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(x_146.z, x_146.z, x_146.z)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
    let x_152 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_154 : vec4<f32> = u_xlat3;
    let x_158 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_160 : vec3<f32> = (vec3<f32>(x_154.x, x_154.y, x_154.z) + vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_161 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : bool = u_xlatb18;
    if (x_163) {
      let x_167 : vec4<f32> = u_xlat3;
      x_164 = vec3<f32>(x_167.x, x_167.y, x_167.z);
    } else {
      let x_170 : vec3<f32> = vs_TEXCOORD5;
      x_164 = x_170;
    }
    let x_171 : vec3<f32> = x_164;
    let x_172 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_174 : vec4<f32> = u_xlat3;
    let x_179 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_181 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + -(x_179));
    let x_182 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat3;
    let x_187 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_188 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) * x_187);
    let x_189 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_189.x, x_188.x, x_188.y, x_188.z);
    let x_192 : f32 = u_xlat3.y;
    u_xlat18 = ((x_192 * 0.25f) + 0.75f);
    let x_200 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_200 * 0.5f) + 0.75f);
    let x_204 : f32 = u_xlat18;
    let x_205 : f32 = u_xlat20;
    u_xlat3.x = max(x_204, x_205);
    let x_216 : vec4<f32> = u_xlat3;
    let x_218 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_216.x, x_216.z, x_216.w));
    u_xlat3 = x_218;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_225 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat18 = dot(x_225, x_227);
  let x_229 : f32 = u_xlat18;
  u_xlat18 = clamp(x_229, 0.0f, 1.0f);
  let x_232 : f32 = u_xlat18;
  let x_236 : vec4<f32> = x_33.x_LightColor0;
  let x_238 : vec3<f32> = (vec3<f32>(x_232, x_232, x_232) * vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = vs_TEXCOORD1;
  let x_245 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(-(vec3<f32>(x_242.x, x_242.y, x_242.z)), x_245);
  let x_247 : f32 = u_xlat18;
  let x_248 : f32 = u_xlat18;
  u_xlat18 = (x_247 + x_248);
  let x_251 : vec3<f32> = u_xlat2;
  let x_252 : f32 = u_xlat18;
  let x_256 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = ((x_251 * -(vec3<f32>(x_252, x_252, x_252))) + -(vec3<f32>(x_256.x, x_256.y, x_256.z)));
  let x_264 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_264;
  let x_268 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_268;
  let x_271 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_271;
  let x_273 : vec3<f32> = u_xlat2;
  let x_274 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_273, x_274);
  let x_276 : f32 = u_xlat18;
  u_xlat18 = clamp(x_276, 0.0f, 1.0f);
  let x_278 : vec3<f32> = u_xlat4;
  let x_279 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(x_278, x_279);
  let x_283 : f32 = u_xlat2.x;
  let x_285 : f32 = u_xlat2.x;
  u_xlat2.x = (x_283 * x_285);
  let x_289 : f32 = u_xlat2.x;
  let x_291 : f32 = u_xlat2.x;
  u_xlat2.x = (x_289 * x_291);
  let x_296 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_296) + 1.0f);
  let x_305 : vec3<f32> = u_xlat2;
  let x_307 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_305.x, x_305.y));
  u_xlat2.x = x_307.x;
  let x_311 : f32 = u_xlat2.x;
  u_xlat2.x = (x_311 * 16.0f);
  let x_315 : vec4<f32> = u_xlat0;
  let x_317 : vec3<f32> = u_xlat2;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = u_xlat7;
  let x_323 : vec4<f32> = u_xlat1;
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = ((x_322 * vec3<f32>(x_323.x, x_323.x, x_323.x)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : f32 = u_xlat18;
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_331, x_331, x_331) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec3<f32> = u_xlat7;
  let x_341 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * x_340);
  let x_342 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : f32 = u_xlat1.x;
  SV_Target0.w = x_345;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

