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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat4 : vec4<f32>;
  var x_189 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlatb20 : bool;
  var u_xlat21 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (vec4<f32>(x_27.w, x_27.x, x_27.y, x_27.z) * vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_33.x_Color;
  let x_49 : vec3<f32> = ((vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_44.x, x_44.y, x_44.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_55 : f32 = x_33.x_Metallic;
  let x_57 : f32 = x_33.x_Metallic;
  let x_59 : f32 = x_33.x_Metallic;
  let x_60 : vec3<f32> = vec3<f32>(x_55, x_57, x_59);
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_65.x, x_65.y, x_65.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_76 : f32 = x_33.x_Metallic;
  u_xlat18 = ((-(x_76) * 0.959999979f) + 0.959999979f);
  let x_83 : f32 = u_xlat18;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_83, x_83, x_83) * vec3<f32>(x_85.y, x_85.z, x_85.w));
  let x_89 : vec4<f32> = vs_TEXCOORD4;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat18 = dot(vec3<f32>(x_89.x, x_89.y, x_89.z), vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_94);
  let x_97 : f32 = u_xlat18;
  let x_99 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_97, x_97, x_97) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_105 : vec3<f32> = vs_TEXCOORD5;
  let x_110 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat3 = (vec4<f32>(x_105.y, x_105.y, x_105.y, x_105.y) * x_110);
  let x_114 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_115 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_114 * vec4<f32>(x_115.x, x_115.x, x_115.x, x_115.x)) + x_118);
  let x_122 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_123 : vec3<f32> = vs_TEXCOORD5;
  let x_126 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_122 * vec4<f32>(x_123.z, x_123.z, x_123.z, x_123.z)) + x_126);
  let x_128 : vec4<f32> = u_xlat3;
  let x_131 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat3 = (x_128 + x_131);
  let x_139 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_139 == 1.0f);
  let x_142 : bool = u_xlatb18;
  if (x_142) {
    let x_147 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_147 == 1.0f);
    let x_150 : vec3<f32> = vs_TEXCOORD5;
    let x_153 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_155 : vec3<f32> = (vec3<f32>(x_150.y, x_150.y, x_150.y) * vec3<f32>(x_153.x, x_153.y, x_153.z));
    let x_156 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
    let x_159 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_161 : vec3<f32> = vs_TEXCOORD5;
    let x_164 : vec4<f32> = u_xlat4;
    let x_166 : vec3<f32> = ((vec3<f32>(x_159.x, x_159.y, x_159.z) * vec3<f32>(x_161.x, x_161.x, x_161.x)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_170 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_172 : vec3<f32> = vs_TEXCOORD5;
    let x_175 : vec4<f32> = u_xlat4;
    let x_177 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172.z, x_172.z, x_172.z)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
    let x_178 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
    let x_180 : vec4<f32> = u_xlat4;
    let x_183 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_185 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + vec3<f32>(x_183.x, x_183.y, x_183.z));
    let x_186 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_188 : bool = u_xlatb18;
    if (x_188) {
      let x_192 : vec4<f32> = u_xlat4;
      x_189 = vec3<f32>(x_192.x, x_192.y, x_192.z);
    } else {
      let x_195 : vec3<f32> = vs_TEXCOORD5;
      x_189 = x_195;
    }
    let x_196 : vec3<f32> = x_189;
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat4;
    let x_204 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_206 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + -(x_204));
    let x_207 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_209 : vec4<f32> = u_xlat4;
    let x_212 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_213 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) * x_212);
    let x_214 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_213.x, x_213.y, x_213.z);
    let x_217 : f32 = u_xlat4.y;
    u_xlat18 = ((x_217 * 0.25f) + 0.75f);
    let x_225 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_225 * 0.5f) + 0.75f);
    let x_229 : f32 = u_xlat18;
    let x_230 : f32 = u_xlat20;
    u_xlat4.x = max(x_229, x_230);
    let x_241 : vec4<f32> = u_xlat4;
    let x_243 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_241.x, x_241.z, x_241.w));
    u_xlat4 = x_243;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat18 = dot(x_250, x_252);
  let x_254 : f32 = u_xlat18;
  u_xlat18 = clamp(x_254, 0.0f, 1.0f);
  let x_259 : f32 = u_xlat3.z;
  u_xlatb20 = (0.0f < x_259);
  let x_261 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_261);
  let x_263 : vec4<f32> = u_xlat3;
  let x_265 : vec4<f32> = u_xlat3;
  let x_267 : vec2<f32> = (vec2<f32>(x_263.x, x_263.y) / vec2<f32>(x_265.w, x_265.w));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_267.x, x_267.y, x_268.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat4;
  let x_273 : vec2<f32> = (vec2<f32>(x_270.x, x_270.y) + vec2<f32>(0.5f, 0.5f));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_274.w);
  let x_282 : vec4<f32> = u_xlat4;
  let x_284 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_282.x, x_282.y));
  u_xlat21 = x_284.w;
  let x_286 : f32 = u_xlat20;
  let x_287 : f32 = u_xlat21;
  u_xlat20 = (x_286 * x_287);
  let x_289 : vec4<f32> = u_xlat3;
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_300.x, x_300.x));
  u_xlat3.x = x_302.x;
  let x_305 : f32 = u_xlat20;
  let x_307 : f32 = u_xlat3.x;
  u_xlat20 = (x_305 * x_307);
  let x_309 : f32 = u_xlat18;
  let x_310 : f32 = u_xlat20;
  u_xlat18 = (x_309 * x_310);
  let x_312 : f32 = u_xlat18;
  let x_316 : vec4<f32> = x_33.x_LightColor0;
  let x_318 : vec3<f32> = (vec3<f32>(x_312, x_312, x_312) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : vec4<f32> = vs_TEXCOORD1;
  let x_325 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(-(vec3<f32>(x_322.x, x_322.y, x_322.z)), x_325);
  let x_327 : f32 = u_xlat18;
  let x_328 : f32 = u_xlat18;
  u_xlat18 = (x_327 + x_328);
  let x_330 : vec3<f32> = u_xlat2;
  let x_331 : f32 = u_xlat18;
  let x_335 : vec4<f32> = vs_TEXCOORD1;
  let x_338 : vec3<f32> = ((x_330 * -(vec3<f32>(x_331, x_331, x_331))) + -(vec3<f32>(x_335.x, x_335.y, x_335.z)));
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_345 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_345;
  let x_349 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_349;
  let x_352 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_352;
  let x_354 : vec3<f32> = u_xlat2;
  let x_355 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_354, x_355);
  let x_357 : f32 = u_xlat18;
  u_xlat18 = clamp(x_357, 0.0f, 1.0f);
  let x_359 : vec4<f32> = u_xlat4;
  let x_361 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_359.x, x_359.y, x_359.z), x_361);
  let x_365 : f32 = u_xlat2.x;
  let x_367 : f32 = u_xlat2.x;
  u_xlat2.x = (x_365 * x_367);
  let x_371 : f32 = u_xlat2.x;
  let x_373 : f32 = u_xlat2.x;
  u_xlat2.x = (x_371 * x_373);
  let x_378 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_378) + 1.0f);
  let x_387 : vec3<f32> = u_xlat2;
  let x_389 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_387.x, x_387.y));
  u_xlat2.x = x_389.x;
  let x_393 : f32 = u_xlat2.x;
  u_xlat2.x = (x_393 * 16.0f);
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec3<f32> = u_xlat2;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399.x, x_399.x, x_399.x));
  let x_402 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec3<f32> = u_xlat7;
  let x_405 : vec4<f32> = u_xlat1;
  let x_408 : vec4<f32> = u_xlat0;
  let x_410 : vec3<f32> = ((x_404 * vec3<f32>(x_405.x, x_405.x, x_405.x)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : f32 = u_xlat18;
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_413, x_413, x_413) * vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_420 : vec4<f32> = u_xlat0;
  let x_422 : vec3<f32> = u_xlat7;
  let x_423 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) * x_422);
  let x_424 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_427 : f32 = u_xlat1.x;
  SV_Target0.w = x_427;
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

