struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD4 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat1 : vec4<f32>;
  var x_105 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Color;
  u_xlat0 = (x_27 * vec3<f32>(x_36.x, x_36.y, x_36.z));
  let x_47 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb6 = (x_47 == 1.0f);
  let x_50 : bool = u_xlatb6;
  if (x_50) {
    let x_55 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb6 = (x_55 == 1.0f);
    let x_61 : vec3<f32> = vs_TEXCOORD2;
    let x_66 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    let x_68 : vec3<f32> = (vec3<f32>(x_61.y, x_61.y, x_61.y) * vec3<f32>(x_66.x, x_66.y, x_66.z));
    let x_69 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
    let x_73 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_75 : vec3<f32> = vs_TEXCOORD2;
    let x_78 : vec4<f32> = u_xlat1;
    let x_80 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_75.x, x_75.x, x_75.x)) + vec3<f32>(x_78.x, x_78.y, x_78.z));
    let x_81 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
    let x_85 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_87 : vec3<f32> = vs_TEXCOORD2;
    let x_90 : vec4<f32> = u_xlat1;
    let x_92 : vec3<f32> = ((vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(x_87.z, x_87.z, x_87.z)) + vec3<f32>(x_90.x, x_90.y, x_90.z));
    let x_93 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
    let x_95 : vec4<f32> = u_xlat1;
    let x_99 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    let x_101 : vec3<f32> = (vec3<f32>(x_95.x, x_95.y, x_95.z) + vec3<f32>(x_99.x, x_99.y, x_99.z));
    let x_102 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
    let x_104 : bool = u_xlatb6;
    if (x_104) {
      let x_108 : vec4<f32> = u_xlat1;
      x_105 = vec3<f32>(x_108.x, x_108.y, x_108.z);
    } else {
      let x_111 : vec3<f32> = vs_TEXCOORD2;
      x_105 = x_111;
    }
    let x_112 : vec3<f32> = x_105;
    let x_113 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
    let x_115 : vec4<f32> = u_xlat1;
    let x_120 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_122 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.z) + -(x_120));
    let x_123 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
    let x_125 : vec4<f32> = u_xlat1;
    let x_129 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_130 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) * x_129);
    let x_131 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_131.x, x_130.x, x_130.y, x_130.z);
    let x_136 : f32 = u_xlat1.y;
    u_xlat6 = ((x_136 * 0.25f) + 0.75f);
    let x_144 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat3 = ((x_144 * 0.5f) + 0.75f);
    let x_148 : f32 = u_xlat6;
    let x_149 : f32 = u_xlat3;
    u_xlat1.x = max(x_148, x_149);
    let x_160 : vec4<f32> = u_xlat1;
    let x_162 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_160.x, x_160.z, x_160.w));
    u_xlat1 = x_162;
  } else {
    u_xlat1.x = 1.0f;
    u_xlat1.y = 1.0f;
    u_xlat1.z = 1.0f;
    u_xlat1.w = 1.0f;
  }
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec4<f32> = x_31.unity_OcclusionMaskSelector;
  u_xlat6 = dot(x_169, x_171);
  let x_173 : f32 = u_xlat6;
  u_xlat6 = clamp(x_173, 0.0f, 1.0f);
  let x_176 : f32 = u_xlat6;
  let x_180 : vec4<f32> = x_31.x_LightColor0;
  let x_182 : vec3<f32> = (vec3<f32>(x_176, x_176, x_176) * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : vec3<f32> = vs_TEXCOORD1;
  let x_188 : vec4<f32> = x_31.x_WorldSpaceLightPos0;
  u_xlat6 = dot(x_186, vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : f32 = u_xlat6;
  u_xlat6 = max(x_191, 0.0f);
  let x_193 : vec3<f32> = u_xlat0;
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_193 * vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_199 : f32 = vs_TEXCOORD4;
  let x_201 : f32 = x_31.x_ProjectionParams.y;
  u_xlat1.x = (x_199 / x_201);
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_205) + 1.0f);
  let x_210 : f32 = u_xlat1.x;
  let x_212 : f32 = x_31.x_ProjectionParams.z;
  u_xlat1.x = (x_210 * x_212);
  let x_216 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_216, 0.0f);
  let x_220 : f32 = u_xlat1.x;
  let x_223 : f32 = x_31.unity_FogParams.x;
  u_xlat1.x = (x_220 * x_223);
  let x_227 : f32 = u_xlat1.x;
  let x_229 : f32 = u_xlat1.x;
  u_xlat1.x = (x_227 * -(x_229));
  let x_234 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_234);
  let x_237 : vec3<f32> = u_xlat0;
  let x_238 : f32 = u_xlat6;
  let x_242 : vec4<f32> = x_31.unity_FogColor;
  u_xlat0 = ((x_237 * vec3<f32>(x_238, x_238, x_238)) + -(vec3<f32>(x_242.x, x_242.y, x_242.z)));
  let x_248 : vec4<f32> = u_xlat1;
  let x_250 : vec3<f32> = u_xlat0;
  let x_253 : vec4<f32> = x_31.unity_FogColor;
  let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.x, x_248.x) * x_250) + vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(1) vs_TEXCOORD4_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

