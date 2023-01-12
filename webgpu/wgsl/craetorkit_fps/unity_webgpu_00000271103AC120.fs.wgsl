struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb12 : bool;
  var u_xlat3 : vec4<f32>;
  var x_146 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlatb13 : bool;
  var u_xlat14 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat12 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_31);
  let x_33 : f32 = u_xlat12;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat1 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat1;
  let x_57 : vec4<f32> = x_18.x_Color;
  u_xlat1 = (x_54 * vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  let x_67 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat2 = (vec4<f32>(x_62.y, x_62.y, x_62.y, x_62.y) * x_67);
  let x_70 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_71 : vec3<f32> = vs_TEXCOORD2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_78 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_79 : vec3<f32> = vs_TEXCOORD2;
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_78 * vec4<f32>(x_79.z, x_79.z, x_79.z, x_79.z)) + x_82);
  let x_84 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat2 = (x_84 + x_87);
  let x_96 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb12 = (x_96 == 1.0f);
  let x_99 : bool = u_xlatb12;
  if (x_99) {
    let x_104 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb12 = (x_104 == 1.0f);
    let x_107 : vec3<f32> = vs_TEXCOORD2;
    let x_110 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_112 : vec3<f32> = (vec3<f32>(x_107.y, x_107.y, x_107.y) * vec3<f32>(x_110.x, x_110.y, x_110.z));
    let x_113 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
    let x_116 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_118 : vec3<f32> = vs_TEXCOORD2;
    let x_121 : vec4<f32> = u_xlat3;
    let x_123 : vec3<f32> = ((vec3<f32>(x_116.x, x_116.y, x_116.z) * vec3<f32>(x_118.x, x_118.x, x_118.x)) + vec3<f32>(x_121.x, x_121.y, x_121.z));
    let x_124 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
    let x_127 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_129 : vec3<f32> = vs_TEXCOORD2;
    let x_132 : vec4<f32> = u_xlat3;
    let x_134 : vec3<f32> = ((vec3<f32>(x_127.x, x_127.y, x_127.z) * vec3<f32>(x_129.z, x_129.z, x_129.z)) + vec3<f32>(x_132.x, x_132.y, x_132.z));
    let x_135 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
    let x_137 : vec4<f32> = u_xlat3;
    let x_140 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_142 : vec3<f32> = (vec3<f32>(x_137.x, x_137.y, x_137.z) + vec3<f32>(x_140.x, x_140.y, x_140.z));
    let x_143 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
    let x_145 : bool = u_xlatb12;
    if (x_145) {
      let x_149 : vec4<f32> = u_xlat3;
      x_146 = vec3<f32>(x_149.x, x_149.y, x_149.z);
    } else {
      let x_152 : vec3<f32> = vs_TEXCOORD2;
      x_146 = x_152;
    }
    let x_153 : vec3<f32> = x_146;
    let x_154 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
    let x_156 : vec4<f32> = u_xlat3;
    let x_161 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_163 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) + -(x_161));
    let x_164 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
    let x_166 : vec4<f32> = u_xlat3;
    let x_170 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_171 : vec3<f32> = (vec3<f32>(x_166.x, x_166.y, x_166.z) * x_170);
    let x_172 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_172.x, x_171.x, x_171.y, x_171.z);
    let x_175 : f32 = u_xlat3.y;
    u_xlat12 = ((x_175 * 0.25f) + 0.75f);
    let x_183 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat13 = ((x_183 * 0.5f) + 0.75f);
    let x_187 : f32 = u_xlat12;
    let x_188 : f32 = u_xlat13;
    u_xlat3.x = max(x_187, x_188);
    let x_199 : vec4<f32> = u_xlat3;
    let x_201 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_199.x, x_199.z, x_199.w));
    u_xlat3 = x_201;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_208 : vec4<f32> = u_xlat3;
  let x_210 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat12 = dot(x_208, x_210);
  let x_212 : f32 = u_xlat12;
  u_xlat12 = clamp(x_212, 0.0f, 1.0f);
  let x_217 : f32 = u_xlat2.z;
  u_xlatb13 = (0.0f < x_217);
  let x_219 : bool = u_xlatb13;
  u_xlat13 = select(0.0f, 1.0f, x_219);
  let x_221 : vec4<f32> = u_xlat2;
  let x_223 : vec4<f32> = u_xlat2;
  let x_225 : vec2<f32> = (vec2<f32>(x_221.x, x_221.y) / vec2<f32>(x_223.w, x_223.w));
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_226.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat3;
  let x_231 : vec2<f32> = (vec2<f32>(x_228.x, x_228.y) + vec2<f32>(0.5f, 0.5f));
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_231.x, x_231.y, x_232.z, x_232.w);
  let x_240 : vec4<f32> = u_xlat3;
  let x_242 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_240.x, x_240.y));
  u_xlat14 = x_242.w;
  let x_244 : f32 = u_xlat13;
  let x_245 : f32 = u_xlat14;
  u_xlat13 = (x_244 * x_245);
  let x_247 : vec4<f32> = u_xlat2;
  let x_249 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_247.x, x_247.y, x_247.z), vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_258 : vec4<f32> = u_xlat2;
  let x_260 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_258.x, x_258.x));
  u_xlat2.x = x_260.x;
  let x_263 : f32 = u_xlat13;
  let x_265 : f32 = u_xlat2.x;
  u_xlat13 = (x_263 * x_265);
  let x_267 : f32 = u_xlat12;
  let x_268 : f32 = u_xlat13;
  u_xlat12 = (x_267 * x_268);
  let x_270 : f32 = u_xlat12;
  let x_274 : vec4<f32> = x_18.x_LightColor0;
  let x_276 : vec3<f32> = (vec3<f32>(x_270, x_270, x_270) * vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec3<f32> = vs_TEXCOORD1;
  let x_281 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_280, x_281);
  let x_285 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_285, 0.0f);
  let x_289 : vec3<f32> = u_xlat1;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_289 * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec3<f32> = u_xlat0;
  let x_295 : vec3<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_293.x, x_293.x, x_293.x) * x_295);
  let x_299 : f32 = vs_TEXCOORD5;
  u_xlat12 = x_299;
  let x_300 : f32 = u_xlat12;
  u_xlat12 = clamp(x_300, 0.0f, 1.0f);
  let x_304 : vec3<f32> = u_xlat0;
  let x_305 : f32 = u_xlat12;
  let x_307 : vec3<f32> = (x_304 * vec3<f32>(x_305, x_305, x_305));
  let x_308 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(1) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

