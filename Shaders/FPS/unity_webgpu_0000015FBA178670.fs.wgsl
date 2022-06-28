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
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat20 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_183 : vec3<f32>;
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
  let x_93 : vec3<f32> = vs_TEXCOORD5;
  let x_98 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_93.y, x_93.y, x_93.y) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_103 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_105 : vec3<f32> = vs_TEXCOORD5;
  let x_108 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_103.x, x_103.y, x_103.z) * vec3<f32>(x_105.x, x_105.x, x_105.x)) + x_108);
  let x_112 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_114 : vec3<f32> = vs_TEXCOORD5;
  let x_117 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_112.x, x_112.y, x_112.z) * vec3<f32>(x_114.z, x_114.z, x_114.z)) + x_117);
  let x_119 : vec3<f32> = u_xlat3;
  let x_122 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat3 = (x_119 + vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_131 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_131 == 1.0f);
  let x_134 : bool = u_xlatb19;
  if (x_134) {
    let x_139 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_139 == 1.0f);
    let x_143 : vec3<f32> = vs_TEXCOORD5;
    let x_146 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_148 : vec3<f32> = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_146.x, x_146.y, x_146.z));
    let x_149 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
    let x_152 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_154 : vec3<f32> = vs_TEXCOORD5;
    let x_157 : vec4<f32> = u_xlat4;
    let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
    let x_160 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_163 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_165 : vec3<f32> = vs_TEXCOORD5;
    let x_168 : vec4<f32> = u_xlat4;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_173 : vec4<f32> = u_xlat4;
    let x_176 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_178 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + vec3<f32>(x_176.x, x_176.y, x_176.z));
    let x_179 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_181 : bool = u_xlatb19;
    if (x_181) {
      let x_186 : vec4<f32> = u_xlat4;
      x_183 = vec3<f32>(x_186.x, x_186.y, x_186.z);
    } else {
      let x_189 : vec3<f32> = vs_TEXCOORD5;
      x_183 = x_189;
    }
    let x_190 : vec3<f32> = x_183;
    let x_191 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_193 : vec4<f32> = u_xlat4;
    let x_198 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_200 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) + -(x_198));
    let x_201 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_203 : vec4<f32> = u_xlat4;
    let x_206 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_207 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) * x_206);
    let x_208 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_208.x, x_207.x, x_207.y, x_207.z);
    let x_211 : f32 = u_xlat4.y;
    u_xlat19 = ((x_211 * 0.25f) + 0.75f);
    let x_219 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_219 * 0.5f) + 0.75f);
    let x_223 : f32 = u_xlat19;
    let x_224 : f32 = u_xlat20;
    u_xlat4.x = max(x_223, x_224);
    let x_235 : vec4<f32> = u_xlat4;
    let x_237 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_235.x, x_235.z, x_235.w));
    u_xlat4 = x_237;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_244, x_246);
  let x_248 : f32 = u_xlat19;
  u_xlat19 = clamp(x_248, 0.0f, 1.0f);
  let x_251 : vec3<f32> = u_xlat3;
  let x_252 : vec3<f32> = u_xlat3;
  u_xlat20 = dot(x_251, x_252);
  let x_259 : f32 = u_xlat20;
  let x_261 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_259, x_259));
  u_xlat20 = x_261.x;
  let x_263 : f32 = u_xlat19;
  let x_264 : f32 = u_xlat20;
  u_xlat19 = (x_263 * x_264);
  let x_266 : f32 = u_xlat19;
  let x_270 : vec4<f32> = x_33.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_266, x_266, x_266) * vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_274 : vec4<f32> = vs_TEXCOORD1;
  let x_277 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_274.x, x_274.y, x_274.z)), x_277);
  let x_279 : f32 = u_xlat19;
  let x_280 : f32 = u_xlat19;
  u_xlat19 = (x_279 + x_280);
  let x_282 : vec3<f32> = u_xlat2;
  let x_283 : f32 = u_xlat19;
  let x_287 : vec4<f32> = vs_TEXCOORD1;
  let x_290 : vec3<f32> = ((x_282 * -(vec3<f32>(x_283, x_283, x_283))) + -(vec3<f32>(x_287.x, x_287.y, x_287.z)));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_297 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_297;
  let x_301 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_301;
  let x_304 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_304;
  let x_306 : vec3<f32> = u_xlat2;
  let x_307 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_306, x_307);
  let x_309 : f32 = u_xlat19;
  u_xlat19 = clamp(x_309, 0.0f, 1.0f);
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), x_313);
  let x_317 : f32 = u_xlat2.x;
  let x_319 : f32 = u_xlat2.x;
  u_xlat2.x = (x_317 * x_319);
  let x_323 : f32 = u_xlat2.x;
  let x_325 : f32 = u_xlat2.x;
  u_xlat2.x = (x_323 * x_325);
  let x_330 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_330) + 1.0f);
  let x_339 : vec3<f32> = u_xlat2;
  let x_341 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_339.x, x_339.y));
  u_xlat2.x = x_341.x;
  let x_345 : f32 = u_xlat2.x;
  u_xlat2.x = (x_345 * 16.0f);
  let x_349 : vec3<f32> = u_xlat0;
  let x_350 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_349 * vec3<f32>(x_350.x, x_350.x, x_350.x));
  let x_353 : vec3<f32> = u_xlat1;
  let x_354 : f32 = u_xlat18;
  let x_357 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_353 * vec3<f32>(x_354, x_354, x_354)) + x_357);
  let x_359 : f32 = u_xlat19;
  let x_361 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_359, x_359, x_359) * x_361);
  let x_365 : vec3<f32> = u_xlat0;
  let x_366 : vec3<f32> = u_xlat1;
  let x_367 : vec3<f32> = (x_365 * x_366);
  let x_368 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
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

