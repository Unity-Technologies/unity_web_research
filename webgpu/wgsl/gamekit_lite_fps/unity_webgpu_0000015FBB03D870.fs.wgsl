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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat20 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_NHxRoughness : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_170 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat18 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_95 : vec4<f32> = vs_TEXCOORD4;
  let x_97 : vec4<f32> = vs_TEXCOORD4;
  u_xlat19 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_100);
  let x_103 : f32 = u_xlat19;
  let x_105 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_114 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_114 == 1.0f);
  let x_117 : bool = u_xlatb19;
  if (x_117) {
    let x_122 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_122 == 1.0f);
    let x_127 : vec3<f32> = vs_TEXCOORD5;
    let x_131 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_133 : vec3<f32> = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
    let x_134 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
    let x_138 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_140 : vec3<f32> = vs_TEXCOORD5;
    let x_143 : vec4<f32> = u_xlat3;
    let x_145 : vec3<f32> = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
    let x_146 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
    let x_149 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_151 : vec3<f32> = vs_TEXCOORD5;
    let x_154 : vec4<f32> = u_xlat3;
    let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
    let x_157 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
    let x_159 : vec4<f32> = u_xlat3;
    let x_163 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_165 : vec3<f32> = (vec3<f32>(x_159.x, x_159.y, x_159.z) + vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_166 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_168 : bool = u_xlatb19;
    if (x_168) {
      let x_173 : vec4<f32> = u_xlat3;
      x_170 = vec3<f32>(x_173.x, x_173.y, x_173.z);
    } else {
      let x_176 : vec3<f32> = vs_TEXCOORD5;
      x_170 = x_176;
    }
    let x_177 : vec3<f32> = x_170;
    let x_178 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
    let x_180 : vec4<f32> = u_xlat3;
    let x_185 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_187 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(x_185));
    let x_188 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat3;
    let x_193 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_194 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) * x_193);
    let x_195 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_195.x, x_194.x, x_194.y, x_194.z);
    let x_198 : f32 = u_xlat3.y;
    u_xlat19 = ((x_198 * 0.25f) + 0.75f);
    let x_206 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_206 * 0.5f) + 0.75f);
    let x_210 : f32 = u_xlat19;
    let x_211 : f32 = u_xlat20;
    u_xlat3.x = max(x_210, x_211);
    let x_222 : vec4<f32> = u_xlat3;
    let x_224 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_222.x, x_222.z, x_222.w));
    u_xlat3 = x_224;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_230 : vec4<f32> = u_xlat3;
  let x_232 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_230, x_232);
  let x_234 : f32 = u_xlat19;
  u_xlat19 = clamp(x_234, 0.0f, 1.0f);
  let x_237 : f32 = u_xlat19;
  let x_241 : vec4<f32> = x_37.x_LightColor0;
  let x_243 : vec3<f32> = (vec3<f32>(x_237, x_237, x_237) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : vec4<f32> = vs_TEXCOORD1;
  let x_250 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_247.x, x_247.y, x_247.z)), x_250);
  let x_252 : f32 = u_xlat19;
  let x_253 : f32 = u_xlat19;
  u_xlat19 = (x_252 + x_253);
  let x_256 : vec3<f32> = u_xlat2;
  let x_257 : f32 = u_xlat19;
  let x_261 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = ((x_256 * -(vec3<f32>(x_257, x_257, x_257))) + -(vec3<f32>(x_261.x, x_261.y, x_261.z)));
  let x_269 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_269;
  let x_273 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_273;
  let x_276 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_276;
  let x_278 : vec3<f32> = u_xlat2;
  let x_279 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_278, x_279);
  let x_281 : f32 = u_xlat19;
  u_xlat19 = clamp(x_281, 0.0f, 1.0f);
  let x_283 : vec3<f32> = u_xlat4;
  let x_284 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(x_283, x_284);
  let x_288 : f32 = u_xlat2.x;
  let x_290 : f32 = u_xlat2.x;
  u_xlat2.x = (x_288 * x_290);
  let x_294 : f32 = u_xlat2.x;
  let x_296 : f32 = u_xlat2.x;
  u_xlat2.x = (x_294 * x_296);
  let x_301 : f32 = x_37.x_Glossiness;
  u_xlat2.y = (-(x_301) + 1.0f);
  let x_310 : vec3<f32> = u_xlat2;
  let x_312 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_310.x, x_310.y));
  u_xlat2.x = x_312.x;
  let x_316 : f32 = u_xlat2.x;
  u_xlat2.x = (x_316 * 16.0f);
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = u_xlat2;
  let x_324 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.x, x_322.x));
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec3<f32> = u_xlat1;
  let x_328 : f32 = u_xlat18;
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((x_327 * vec3<f32>(x_328, x_328, x_328)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : f32 = u_xlat19;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_336, x_336, x_336) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = u_xlat1;
  let x_344 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) * x_343);
  let x_345 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
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

