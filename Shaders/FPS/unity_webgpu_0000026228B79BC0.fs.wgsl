struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_112 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD2;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_40 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_40 * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_54 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_54 == 1.0f);
  let x_57 : bool = u_xlatb18;
  if (x_57) {
    let x_62 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_62 == 1.0f);
    let x_68 : vec3<f32> = vs_TEXCOORD1;
    let x_73 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_75 : vec3<f32> = (vec3<f32>(x_68.y, x_68.y, x_68.y) * vec3<f32>(x_73.x, x_73.y, x_73.z));
    let x_76 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_75.x, x_75.y, x_75.z, x_76.w);
    let x_80 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_82 : vec3<f32> = vs_TEXCOORD1;
    let x_85 : vec4<f32> = u_xlat2;
    let x_87 : vec3<f32> = ((vec3<f32>(x_80.x, x_80.y, x_80.z) * vec3<f32>(x_82.x, x_82.x, x_82.x)) + vec3<f32>(x_85.x, x_85.y, x_85.z));
    let x_88 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_87.x, x_87.y, x_87.z, x_88.w);
    let x_92 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_94 : vec3<f32> = vs_TEXCOORD1;
    let x_97 : vec4<f32> = u_xlat2;
    let x_99 : vec3<f32> = ((vec3<f32>(x_92.x, x_92.y, x_92.z) * vec3<f32>(x_94.z, x_94.z, x_94.z)) + vec3<f32>(x_97.x, x_97.y, x_97.z));
    let x_100 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_99.x, x_99.y, x_99.z, x_100.w);
    let x_102 : vec4<f32> = u_xlat2;
    let x_105 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_107 : vec3<f32> = (vec3<f32>(x_102.x, x_102.y, x_102.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
    let x_108 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
    let x_110 : bool = u_xlatb18;
    if (x_110) {
      let x_115 : vec4<f32> = u_xlat2;
      x_112 = vec3<f32>(x_115.x, x_115.y, x_115.z);
    } else {
      let x_118 : vec3<f32> = vs_TEXCOORD1;
      x_112 = x_118;
    }
    let x_119 : vec3<f32> = x_112;
    let x_120 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
    let x_122 : vec4<f32> = u_xlat2;
    let x_127 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_129 : vec3<f32> = (vec3<f32>(x_122.x, x_122.y, x_122.z) + -(x_127));
    let x_130 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
    let x_132 : vec4<f32> = u_xlat2;
    let x_136 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_137 : vec3<f32> = (vec3<f32>(x_132.x, x_132.y, x_132.z) * x_136);
    let x_138 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_138.x, x_137.x, x_137.y, x_137.z);
    let x_143 : f32 = u_xlat2.y;
    u_xlat18 = (x_143 * 0.25f);
    let x_149 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat19 = (x_149 * 0.5f);
    let x_154 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat8 = ((-(x_154) * 0.5f) + 0.25f);
    let x_158 : f32 = u_xlat18;
    let x_159 : f32 = u_xlat19;
    u_xlat18 = max(x_158, x_159);
    let x_161 : f32 = u_xlat8;
    let x_162 : f32 = u_xlat18;
    u_xlat2.x = min(x_161, x_162);
    let x_174 : vec4<f32> = u_xlat2;
    let x_176 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_174.x, x_174.z, x_174.w));
    u_xlat3 = x_176;
    let x_178 : vec4<f32> = u_xlat2;
    let x_182 : vec3<f32> = (vec3<f32>(x_178.x, x_178.z, x_178.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_183 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
    let x_188 : vec4<f32> = u_xlat4;
    let x_190 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_188.x, x_188.y, x_188.z));
    u_xlat4 = x_190;
    let x_191 : vec4<f32> = u_xlat2;
    let x_194 : vec3<f32> = (vec3<f32>(x_191.x, x_191.z, x_191.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_195 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_200 : vec4<f32> = u_xlat2;
    let x_202 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_200.x, x_200.y, x_200.z));
    u_xlat2 = x_202;
    let x_205 : vec3<f32> = vs_TEXCOORD0;
    let x_206 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    u_xlat5.w = 1.0f;
    let x_210 : vec4<f32> = u_xlat3;
    let x_211 : vec4<f32> = u_xlat5;
    u_xlat3.x = dot(x_210, x_211);
    let x_214 : vec4<f32> = u_xlat4;
    let x_215 : vec4<f32> = u_xlat5;
    u_xlat3.y = dot(x_214, x_215);
    let x_218 : vec4<f32> = u_xlat2;
    let x_219 : vec4<f32> = u_xlat5;
    u_xlat3.z = dot(x_218, x_219);
  } else {
    let x_223 : vec3<f32> = vs_TEXCOORD0;
    let x_224 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    u_xlat2.w = 1.0f;
    let x_228 : vec4<f32> = x_31.unity_SHAr;
    let x_229 : vec4<f32> = u_xlat2;
    u_xlat3.x = dot(x_228, x_229);
    let x_233 : vec4<f32> = x_31.unity_SHAg;
    let x_234 : vec4<f32> = u_xlat2;
    u_xlat3.y = dot(x_233, x_234);
    let x_238 : vec4<f32> = x_31.unity_SHAb;
    let x_239 : vec4<f32> = u_xlat2;
    u_xlat3.z = dot(x_238, x_239);
  }
  let x_242 : vec4<f32> = u_xlat3;
  let x_245 : vec3<f32> = vs_TEXCOORD5;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) + x_245);
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat2;
  let x_252 : vec3<f32> = max(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec3<f32> = u_xlat0;
  let x_256 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((x_255 * vec3<f32>(x_256.x, x_256.y, x_256.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_266 : f32 = x_31.x_Metallic;
  let x_268 : vec3<f32> = u_xlat0;
  let x_272 : vec3<f32> = ((vec3<f32>(x_266, x_266, x_266) * x_268) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_273 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_276 : f32 = x_31.x_Metallic;
  u_xlat0.x = ((-(x_276) * 0.959999979f) + 0.959999979f);
  let x_282 : vec3<f32> = u_xlat0;
  let x_284 : vec3<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_282.x, x_282.x, x_282.x) * x_284);
  let x_286 : vec4<f32> = u_xlat2;
  let x_288 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_286.x, x_286.y, x_286.z) * x_288);
  let x_291 : vec3<f32> = u_xlat1;
  let x_293 : vec3<f32> = exp2(-(x_291));
  let x_294 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : vec3<f32> = u_xlat0;
  let x_298 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  SV_Target0.w = 1.0f;
  let x_304 : f32 = x_31.x_Glossiness;
  SV_Target1.w = x_304;
  let x_307 : vec3<f32> = vs_TEXCOORD0;
  let x_310 : vec3<f32> = ((x_307 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_311 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target3, SV_Target0, SV_Target2);
}

