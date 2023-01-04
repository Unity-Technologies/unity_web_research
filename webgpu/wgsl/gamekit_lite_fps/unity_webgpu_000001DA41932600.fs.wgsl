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
  var x_194 : vec3<f32>;
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
  let x_100 : vec2<f32> = (vec2<f32>(x_93.y, x_93.y) * vec2<f32>(x_98.x, x_98.y));
  let x_101 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_100.x, x_100.y, x_101.z);
  let x_105 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_107 : vec3<f32> = vs_TEXCOORD5;
  let x_110 : vec3<f32> = u_xlat3;
  let x_112 : vec2<f32> = ((vec2<f32>(x_105.x, x_105.y) * vec2<f32>(x_107.x, x_107.x)) + vec2<f32>(x_110.x, x_110.y));
  let x_113 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_112.x, x_112.y, x_113.z);
  let x_117 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_119 : vec3<f32> = vs_TEXCOORD5;
  let x_122 : vec3<f32> = u_xlat3;
  let x_124 : vec2<f32> = ((vec2<f32>(x_117.x, x_117.y) * vec2<f32>(x_119.z, x_119.z)) + vec2<f32>(x_122.x, x_122.y));
  let x_125 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_127 : vec3<f32> = u_xlat3;
  let x_131 : vec4<f32> = x_33.unity_WorldToLight[3i];
  let x_133 : vec2<f32> = (vec2<f32>(x_127.x, x_127.y) + vec2<f32>(x_131.x, x_131.y));
  let x_134 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_133.x, x_133.y, x_134.z);
  let x_142 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_142 == 1.0f);
  let x_145 : bool = u_xlatb19;
  if (x_145) {
    let x_150 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_150 == 1.0f);
    let x_154 : vec3<f32> = vs_TEXCOORD5;
    let x_157 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_159 : vec3<f32> = (vec3<f32>(x_154.y, x_154.y, x_154.y) * vec3<f32>(x_157.x, x_157.y, x_157.z));
    let x_160 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_163 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_165 : vec3<f32> = vs_TEXCOORD5;
    let x_168 : vec4<f32> = u_xlat4;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.x, x_165.x, x_165.x)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_174 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_176 : vec3<f32> = vs_TEXCOORD5;
    let x_179 : vec4<f32> = u_xlat4;
    let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.z, x_176.z, x_176.z)) + vec3<f32>(x_179.x, x_179.y, x_179.z));
    let x_182 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat4;
    let x_187 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_189 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : bool = u_xlatb19;
    if (x_192) {
      let x_197 : vec4<f32> = u_xlat4;
      x_194 = vec3<f32>(x_197.x, x_197.y, x_197.z);
    } else {
      let x_200 : vec3<f32> = vs_TEXCOORD5;
      x_194 = x_200;
    }
    let x_201 : vec3<f32> = x_194;
    let x_202 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_204 : vec4<f32> = u_xlat4;
    let x_209 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_211 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) + -(x_209));
    let x_212 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_214 : vec4<f32> = u_xlat4;
    let x_217 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * x_217);
    let x_219 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_219.x, x_218.x, x_218.y, x_218.z);
    let x_222 : f32 = u_xlat4.y;
    u_xlat19 = ((x_222 * 0.25f) + 0.75f);
    let x_230 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_230 * 0.5f) + 0.75f);
    let x_234 : f32 = u_xlat19;
    let x_235 : f32 = u_xlat20;
    u_xlat4.x = max(x_234, x_235);
    let x_246 : vec4<f32> = u_xlat4;
    let x_248 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_246.x, x_246.z, x_246.w));
    u_xlat4 = x_248;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_255, x_257);
  let x_259 : f32 = u_xlat19;
  u_xlat19 = clamp(x_259, 0.0f, 1.0f);
  let x_267 : vec3<f32> = u_xlat3;
  let x_269 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_267.x, x_267.y));
  u_xlat20 = x_269.w;
  let x_271 : f32 = u_xlat19;
  let x_272 : f32 = u_xlat20;
  u_xlat19 = (x_271 * x_272);
  let x_274 : f32 = u_xlat19;
  let x_278 : vec4<f32> = x_33.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_274, x_274, x_274) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_282 : vec4<f32> = vs_TEXCOORD1;
  let x_285 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_282.x, x_282.y, x_282.z)), x_285);
  let x_287 : f32 = u_xlat19;
  let x_288 : f32 = u_xlat19;
  u_xlat19 = (x_287 + x_288);
  let x_290 : vec3<f32> = u_xlat2;
  let x_291 : f32 = u_xlat19;
  let x_295 : vec4<f32> = vs_TEXCOORD1;
  let x_298 : vec3<f32> = ((x_290 * -(vec3<f32>(x_291, x_291, x_291))) + -(vec3<f32>(x_295.x, x_295.y, x_295.z)));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_305 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_305;
  let x_309 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_309;
  let x_312 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_312;
  let x_314 : vec3<f32> = u_xlat2;
  let x_315 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_314, x_315);
  let x_317 : f32 = u_xlat19;
  u_xlat19 = clamp(x_317, 0.0f, 1.0f);
  let x_319 : vec4<f32> = u_xlat4;
  let x_321 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), x_321);
  let x_325 : f32 = u_xlat2.x;
  let x_327 : f32 = u_xlat2.x;
  u_xlat2.x = (x_325 * x_327);
  let x_331 : f32 = u_xlat2.x;
  let x_333 : f32 = u_xlat2.x;
  u_xlat2.x = (x_331 * x_333);
  let x_338 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_338) + 1.0f);
  let x_347 : vec3<f32> = u_xlat2;
  let x_349 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_347.x, x_347.y));
  u_xlat2.x = x_349.x;
  let x_353 : f32 = u_xlat2.x;
  u_xlat2.x = (x_353 * 16.0f);
  let x_357 : vec3<f32> = u_xlat0;
  let x_358 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_357 * vec3<f32>(x_358.x, x_358.x, x_358.x));
  let x_361 : vec3<f32> = u_xlat1;
  let x_362 : f32 = u_xlat18;
  let x_365 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_361 * vec3<f32>(x_362, x_362, x_362)) + x_365);
  let x_367 : f32 = u_xlat19;
  let x_369 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_373 : vec3<f32> = u_xlat0;
  let x_374 : vec3<f32> = u_xlat1;
  let x_375 : vec3<f32> = (x_373 * x_374);
  let x_376 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
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

