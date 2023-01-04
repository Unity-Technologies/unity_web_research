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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat12 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_151 : vec3<f32>;
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
  let x_61 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat2 = (vec3<f32>(x_61.y, x_61.y, x_61.y) * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_70 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_72 : vec3<f32> = vs_TEXCOORD2;
  let x_75 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_70.x, x_70.y, x_70.z) * vec3<f32>(x_72.x, x_72.x, x_72.x)) + x_75);
  let x_79 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_81 : vec3<f32> = vs_TEXCOORD2;
  let x_84 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_79.x, x_79.y, x_79.z) * vec3<f32>(x_81.z, x_81.z, x_81.z)) + x_84);
  let x_86 : vec3<f32> = u_xlat2;
  let x_89 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat2 = (x_86 + vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_99 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb12 = (x_99 == 1.0f);
  let x_102 : bool = u_xlatb12;
  if (x_102) {
    let x_107 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb12 = (x_107 == 1.0f);
    let x_111 : vec3<f32> = vs_TEXCOORD2;
    let x_114 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_116 : vec3<f32> = (vec3<f32>(x_111.y, x_111.y, x_111.y) * vec3<f32>(x_114.x, x_114.y, x_114.z));
    let x_117 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
    let x_120 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_122 : vec3<f32> = vs_TEXCOORD2;
    let x_125 : vec4<f32> = u_xlat3;
    let x_127 : vec3<f32> = ((vec3<f32>(x_120.x, x_120.y, x_120.z) * vec3<f32>(x_122.x, x_122.x, x_122.x)) + vec3<f32>(x_125.x, x_125.y, x_125.z));
    let x_128 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
    let x_131 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_133 : vec3<f32> = vs_TEXCOORD2;
    let x_136 : vec4<f32> = u_xlat3;
    let x_138 : vec3<f32> = ((vec3<f32>(x_131.x, x_131.y, x_131.z) * vec3<f32>(x_133.z, x_133.z, x_133.z)) + vec3<f32>(x_136.x, x_136.y, x_136.z));
    let x_139 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
    let x_141 : vec4<f32> = u_xlat3;
    let x_144 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_146 : vec3<f32> = (vec3<f32>(x_141.x, x_141.y, x_141.z) + vec3<f32>(x_144.x, x_144.y, x_144.z));
    let x_147 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
    let x_149 : bool = u_xlatb12;
    if (x_149) {
      let x_154 : vec4<f32> = u_xlat3;
      x_151 = vec3<f32>(x_154.x, x_154.y, x_154.z);
    } else {
      let x_157 : vec3<f32> = vs_TEXCOORD2;
      x_151 = x_157;
    }
    let x_158 : vec3<f32> = x_151;
    let x_159 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
    let x_161 : vec4<f32> = u_xlat3;
    let x_166 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_168 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + -(x_166));
    let x_169 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_171 : vec4<f32> = u_xlat3;
    let x_175 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_176 : vec3<f32> = (vec3<f32>(x_171.x, x_171.y, x_171.z) * x_175);
    let x_177 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_177.x, x_176.x, x_176.y, x_176.z);
    let x_180 : f32 = u_xlat3.y;
    u_xlat12 = ((x_180 * 0.25f) + 0.75f);
    let x_188 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat13 = ((x_188 * 0.5f) + 0.75f);
    let x_192 : f32 = u_xlat12;
    let x_193 : f32 = u_xlat13;
    u_xlat3.x = max(x_192, x_193);
    let x_204 : vec4<f32> = u_xlat3;
    let x_206 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_204.x, x_204.z, x_204.w));
    u_xlat3 = x_206;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_213 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat12 = dot(x_213, x_215);
  let x_217 : f32 = u_xlat12;
  u_xlat12 = clamp(x_217, 0.0f, 1.0f);
  let x_220 : vec3<f32> = u_xlat2;
  let x_221 : vec3<f32> = u_xlat2;
  u_xlat13 = dot(x_220, x_221);
  let x_228 : f32 = u_xlat13;
  let x_230 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_228, x_228));
  u_xlat13 = x_230.x;
  let x_232 : f32 = u_xlat12;
  let x_233 : f32 = u_xlat13;
  u_xlat12 = (x_232 * x_233);
  let x_235 : f32 = u_xlat12;
  let x_239 : vec4<f32> = x_18.x_LightColor0;
  u_xlat2 = (vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_243 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_243, x_244);
  let x_248 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_248, 0.0f);
  let x_252 : vec3<f32> = u_xlat1;
  let x_253 : vec3<f32> = u_xlat2;
  u_xlat4 = (x_252 * x_253);
  let x_257 : vec3<f32> = u_xlat0;
  let x_259 : vec3<f32> = u_xlat4;
  let x_260 : vec3<f32> = (vec3<f32>(x_257.x, x_257.x, x_257.x) * x_259);
  let x_261 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

