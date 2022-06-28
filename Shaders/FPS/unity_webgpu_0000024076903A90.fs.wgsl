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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_154 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat18 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_77 : vec4<f32> = vs_TEXCOORD4;
  let x_79 : vec4<f32> = vs_TEXCOORD4;
  u_xlat19 = dot(vec3<f32>(x_77.x, x_77.y, x_77.z), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_82);
  let x_85 : f32 = u_xlat19;
  let x_87 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_85, x_85, x_85) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_97 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_97 == 1.0f);
  let x_100 : bool = u_xlatb19;
  if (x_100) {
    let x_105 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_105 == 1.0f);
    let x_111 : vec3<f32> = vs_TEXCOORD5;
    let x_115 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_117 : vec3<f32> = (vec3<f32>(x_111.y, x_111.y, x_111.y) * vec3<f32>(x_115.x, x_115.y, x_115.z));
    let x_118 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
    let x_122 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_124 : vec3<f32> = vs_TEXCOORD5;
    let x_127 : vec4<f32> = u_xlat3;
    let x_129 : vec3<f32> = ((vec3<f32>(x_122.x, x_122.y, x_122.z) * vec3<f32>(x_124.x, x_124.x, x_124.x)) + vec3<f32>(x_127.x, x_127.y, x_127.z));
    let x_130 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
    let x_133 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_135 : vec3<f32> = vs_TEXCOORD5;
    let x_138 : vec4<f32> = u_xlat3;
    let x_140 : vec3<f32> = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135.z, x_135.z, x_135.z)) + vec3<f32>(x_138.x, x_138.y, x_138.z));
    let x_141 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
    let x_143 : vec4<f32> = u_xlat3;
    let x_147 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_149 : vec3<f32> = (vec3<f32>(x_143.x, x_143.y, x_143.z) + vec3<f32>(x_147.x, x_147.y, x_147.z));
    let x_150 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
    let x_152 : bool = u_xlatb19;
    if (x_152) {
      let x_157 : vec4<f32> = u_xlat3;
      x_154 = vec3<f32>(x_157.x, x_157.y, x_157.z);
    } else {
      let x_160 : vec3<f32> = vs_TEXCOORD5;
      x_154 = x_160;
    }
    let x_161 : vec3<f32> = x_154;
    let x_162 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_164 : vec4<f32> = u_xlat3;
    let x_169 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_171 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + -(x_169));
    let x_172 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_174 : vec4<f32> = u_xlat3;
    let x_177 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) * x_177);
    let x_179 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_179.x, x_178.x, x_178.y, x_178.z);
    let x_182 : f32 = u_xlat3.y;
    u_xlat19 = ((x_182 * 0.25f) + 0.75f);
    let x_190 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_190 * 0.5f) + 0.75f);
    let x_194 : f32 = u_xlat19;
    let x_195 : f32 = u_xlat20;
    u_xlat3.x = max(x_194, x_195);
    let x_206 : vec4<f32> = u_xlat3;
    let x_208 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_206.x, x_206.z, x_206.w));
    u_xlat3 = x_208;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_215 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_215, x_217);
  let x_219 : f32 = u_xlat19;
  u_xlat19 = clamp(x_219, 0.0f, 1.0f);
  let x_222 : f32 = u_xlat19;
  let x_226 : vec4<f32> = x_33.x_LightColor0;
  let x_228 : vec3<f32> = (vec3<f32>(x_222, x_222, x_222) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec4<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_232.x, x_232.y, x_232.z)), x_235);
  let x_237 : f32 = u_xlat19;
  let x_238 : f32 = u_xlat19;
  u_xlat19 = (x_237 + x_238);
  let x_241 : vec3<f32> = u_xlat2;
  let x_242 : f32 = u_xlat19;
  let x_246 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = ((x_241 * -(vec3<f32>(x_242, x_242, x_242))) + -(vec3<f32>(x_246.x, x_246.y, x_246.z)));
  let x_254 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_254;
  let x_258 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_258;
  let x_261 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_261;
  let x_263 : vec3<f32> = u_xlat2;
  let x_264 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_263, x_264);
  let x_266 : f32 = u_xlat19;
  u_xlat19 = clamp(x_266, 0.0f, 1.0f);
  let x_268 : vec3<f32> = u_xlat4;
  let x_269 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(x_268, x_269);
  let x_273 : f32 = u_xlat2.x;
  let x_275 : f32 = u_xlat2.x;
  u_xlat2.x = (x_273 * x_275);
  let x_279 : f32 = u_xlat2.x;
  let x_281 : f32 = u_xlat2.x;
  u_xlat2.x = (x_279 * x_281);
  let x_286 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_286) + 1.0f);
  let x_295 : vec3<f32> = u_xlat2;
  let x_297 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_295.x, x_295.y));
  u_xlat2.x = x_297.x;
  let x_301 : f32 = u_xlat2.x;
  u_xlat2.x = (x_301 * 16.0f);
  let x_305 : vec3<f32> = u_xlat0;
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_305 * vec3<f32>(x_306.x, x_306.x, x_306.x));
  let x_309 : vec3<f32> = u_xlat1;
  let x_310 : f32 = u_xlat18;
  let x_313 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_309 * vec3<f32>(x_310, x_310, x_310)) + x_313);
  let x_315 : f32 = u_xlat19;
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_315, x_315, x_315) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_322 : vec3<f32> = u_xlat0;
  let x_323 : vec3<f32> = u_xlat1;
  let x_324 : vec3<f32> = (x_322 * x_323);
  let x_325 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  SV_Target0.w = 1.0f;
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

