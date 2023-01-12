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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlatb1 : bool;
  var u_xlat4 : vec3<f32>;
  var x_164 : vec3<f32>;
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
      let x_167 : vec3<f32> = u_xlat4;
      x_164 = x_167;
    } else {
      let x_169 : vec3<f32> = vs_TEXCOORD2;
      x_164 = x_169;
    }
    let x_170 : vec3<f32> = x_164;
    let x_171 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_173 : vec4<f32> = u_xlat1;
    let x_177 : vec3<f32> = x_31.unity_ProbeVolumeMin;
    let x_179 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + -(x_177));
    let x_180 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat1;
    let x_186 : vec3<f32> = x_31.unity_ProbeVolumeSizeInv;
    let x_187 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) * x_186);
    let x_188 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_188.x, x_187.x, x_187.y, x_187.z);
    let x_191 : f32 = u_xlat1.y;
    u_xlat4.x = ((x_191 * 0.25f) + 0.75f);
    let x_198 : f32 = x_31.unity_ProbeVolumeParams.z;
    u_xlat2.x = ((x_198 * 0.5f) + 0.75f);
    let x_204 : f32 = u_xlat4.x;
    let x_206 : f32 = u_xlat2.x;
    u_xlat1.x = max(x_204, x_206);
    let x_217 : vec4<f32> = u_xlat1;
    let x_219 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_217.x, x_217.z, x_217.w));
    u_xlat1 = x_219;
  } else {
    u_xlat1.x = 1.0f;
    u_xlat1.y = 1.0f;
    u_xlat1.z = 1.0f;
    u_xlat1.w = 1.0f;
  }
  let x_225 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = x_31.unity_OcclusionMaskSelector;
  u_xlat1.x = dot(x_225, x_227);
  let x_231 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_231, 0.0f, 1.0f);
  let x_236 : vec4<f32> = vs_TEXCOORD5;
  let x_238 : vec4<f32> = vs_TEXCOORD5;
  let x_240 : vec2<f32> = (vec2<f32>(x_236.x, x_236.y) / vec2<f32>(x_238.w, x_238.w));
  let x_241 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_240.x, x_240.y, x_241.z);
  let x_248 : vec3<f32> = u_xlat4;
  let x_250 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_248.x, x_248.y));
  u_xlat4.x = x_250.x;
  let x_254 : f32 = u_xlat4.x;
  let x_257 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_254) + x_257);
  let x_260 : f32 = u_xlat9;
  let x_262 : f32 = u_xlat1.x;
  let x_265 : f32 = u_xlat4.x;
  u_xlat9 = ((x_260 * x_262) + x_265);
  let x_267 : f32 = u_xlat9;
  let x_271 : vec4<f32> = x_31.x_LightColor0;
  let x_273 : vec3<f32> = (vec3<f32>(x_267, x_267, x_267) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_31.x_WorldSpaceLightPos0;
  u_xlat9 = dot(x_277, vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : f32 = u_xlat9;
  u_xlat9 = max(x_282, 0.0f);
  let x_284 : vec3<f32> = u_xlat0;
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_284 * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_290 : f32 = u_xlat9;
  let x_292 : vec3<f32> = u_xlat0;
  let x_293 : vec3<f32> = (vec3<f32>(x_290, x_290, x_290) * x_292);
  let x_294 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
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

