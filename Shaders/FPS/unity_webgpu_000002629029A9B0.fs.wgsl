struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_165 : vec3<f32>;
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
  let x_43 : vec3<f32> = vs_TEXCOORD2;
  let x_48 : vec3<f32> = x_31.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_58 : f32 = x_31.unity_MatrixV[0i].z;
  u_xlat2.x = x_58;
  let x_64 : f32 = x_31.unity_MatrixV[1i].z;
  u_xlat2.y = x_64;
  let x_69 : f32 = x_31.unity_MatrixV[2i].z;
  u_xlat2.z = x_69;
  let x_72 : vec4<f32> = u_xlat1;
  let x_74 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_72.x, x_72.y, x_72.z), x_74);
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  let x_79 : vec4<f32> = x_31.unity_ShadowFadeCenterAndType;
  let x_82 : vec3<f32> = (x_76 + -(vec3<f32>(x_79.x, x_79.y, x_79.z)));
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_85.x, x_85.y, x_85.z), vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_92 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_92);
  let x_95 : f32 = u_xlat9;
  let x_98 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_95) + x_98);
  let x_103 : f32 = x_31.unity_ShadowFadeCenterAndType.w;
  let x_105 : f32 = u_xlat1.x;
  let x_107 : f32 = u_xlat9;
  u_xlat9 = ((x_103 * x_105) + x_107);
  let x_109 : f32 = u_xlat9;
  let x_112 : f32 = x_31.x_LightShadowData.z;
  let x_115 : f32 = x_31.x_LightShadowData.w;
  u_xlat9 = ((x_109 * x_112) + x_115);
  let x_117 : f32 = u_xlat9;
  u_xlat9 = clamp(x_117, 0.0f, 1.0f);
  let x_126 : f32 = x_31.unity_ProbeVolumeParams.x;
  u_xlatb1 = (x_126 == 1.0f);
  let x_128 : bool = u_xlatb1;
  if (x_128) {
    let x_132 : f32 = x_31.unity_ProbeVolumeParams.y;
    u_xlatb1 = (x_132 == 1.0f);
    let x_135 : vec3<f32> = vs_TEXCOORD2;
    let x_139 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[1i];
    u_xlat4 = (vec3<f32>(x_135.y, x_135.y, x_135.y) * vec3<f32>(x_139.x, x_139.y, x_139.z));
    let x_143 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[0i];
    let x_145 : vec3<f32> = vs_TEXCOORD2;
    let x_148 : vec3<f32> = u_xlat4;
    u_xlat4 = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145.x, x_145.x, x_145.x)) + x_148);
    let x_151 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[2i];
    let x_153 : vec3<f32> = vs_TEXCOORD2;
    let x_156 : vec3<f32> = u_xlat4;
    u_xlat4 = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + x_156);
    let x_158 : vec3<f32> = u_xlat4;
    let x_160 : vec4<f32> = x_31.unity_ProbeVolumeWorldToObject[3i];
    u_xlat4 = (x_158 + vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : bool = u_xlatb1;
    if (x_163) {
      let x_168 : vec3<f32> = u_xlat4;
      x_165 = x_168;
    } else {
      let x_170 : vec3<f32> = vs_TEXCOORD2;
      x_165 = x_170;
    }
    let x_171 : vec3<f32> = x_165;
    let x_172 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_174 : vec4<f32> = u_xlat1;
    let x_178 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_180 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + -(x_178));
    let x_181 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat1;
    let x_187 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_188 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) * x_187);
    let x_189 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_189.x, x_188.x, x_188.y, x_188.z);
    let x_192 : f32 = u_xlat1.y;
    u_xlat4.x = ((x_192 * 0.25f) + 0.75f);
    let x_199 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat2.x = ((x_199 * 0.5f) + 0.75f);
    let x_205 : f32 = u_xlat4.x;
    let x_207 : f32 = u_xlat2.x;
    u_xlat1.x = max(x_205, x_207);
    let x_218 : vec4<f32> = u_xlat1;
    let x_220 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_218.x, x_218.z, x_218.w));
    u_xlat1 = x_220;
  } else {
    u_xlat1.x = 1.0f;
    u_xlat1.y = 1.0f;
    u_xlat1.z = 1.0f;
    u_xlat1.w = 1.0f;
  }
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = x_31.unity_OcclusionMaskSelector;
  u_xlat1.x = dot(x_226, x_228);
  let x_232 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_232, 0.0f, 1.0f);
  let x_237 : vec4<f32> = vs_TEXCOORD5;
  let x_239 : vec4<f32> = vs_TEXCOORD5;
  let x_241 : vec2<f32> = (vec2<f32>(x_237.x, x_237.y) / vec2<f32>(x_239.w, x_239.w));
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_241.x, x_241.y, x_242.z);
  let x_249 : vec3<f32> = u_xlat4;
  let x_251 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_249.x, x_249.y));
  u_xlat4.x = x_251.x;
  let x_255 : f32 = u_xlat4.x;
  let x_258 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_255) + x_258);
  let x_261 : f32 = u_xlat9;
  let x_263 : f32 = u_xlat1.x;
  let x_266 : f32 = u_xlat4.x;
  u_xlat9 = ((x_261 * x_263) + x_266);
  let x_268 : f32 = u_xlat9;
  let x_272 : vec4<f32> = x_31.x_LightColor0;
  let x_274 : vec3<f32> = (vec3<f32>(x_268, x_268, x_268) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_280 : vec4<f32> = x_31.x_WorldSpaceLightPos0;
  u_xlat9 = dot(x_278, vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : f32 = u_xlat9;
  u_xlat9 = max(x_283, 0.0f);
  let x_285 : vec3<f32> = u_xlat0;
  let x_286 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_285 * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : f32 = u_xlat9;
  let x_293 : vec3<f32> = u_xlat0;
  let x_294 : vec3<f32> = (vec3<f32>(x_291, x_291, x_291) * x_293);
  let x_295 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

