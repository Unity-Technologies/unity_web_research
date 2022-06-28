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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

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

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_210 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat18 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_95 : vec4<f32> = vs_TEXCOORD4;
  let x_97 : vec4<f32> = vs_TEXCOORD4;
  u_xlat19 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_100);
  let x_103 : f32 = u_xlat19;
  let x_105 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_111 : vec3<f32> = vs_TEXCOORD5;
  let x_116 : vec4<f32> = x_37.unity_WorldToLight[1i];
  let x_118 : vec2<f32> = (vec2<f32>(x_111.y, x_111.y) * vec2<f32>(x_116.x, x_116.y));
  let x_119 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_118.x, x_118.y, x_119.z);
  let x_123 : vec4<f32> = x_37.unity_WorldToLight[0i];
  let x_125 : vec3<f32> = vs_TEXCOORD5;
  let x_128 : vec3<f32> = u_xlat3;
  let x_130 : vec2<f32> = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.x)) + vec2<f32>(x_128.x, x_128.y));
  let x_131 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  let x_135 : vec4<f32> = x_37.unity_WorldToLight[2i];
  let x_137 : vec3<f32> = vs_TEXCOORD5;
  let x_140 : vec3<f32> = u_xlat3;
  let x_142 : vec2<f32> = ((vec2<f32>(x_135.x, x_135.y) * vec2<f32>(x_137.z, x_137.z)) + vec2<f32>(x_140.x, x_140.y));
  let x_143 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_142.x, x_142.y, x_143.z);
  let x_145 : vec3<f32> = u_xlat3;
  let x_149 : vec4<f32> = x_37.unity_WorldToLight[3i];
  let x_151 : vec2<f32> = (vec2<f32>(x_145.x, x_145.y) + vec2<f32>(x_149.x, x_149.y));
  let x_152 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_151.x, x_151.y, x_152.z);
  let x_159 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_159 == 1.0f);
  let x_162 : bool = u_xlatb19;
  if (x_162) {
    let x_167 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_167 == 1.0f);
    let x_170 : vec3<f32> = vs_TEXCOORD5;
    let x_173 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_175 : vec3<f32> = (vec3<f32>(x_170.y, x_170.y, x_170.y) * vec3<f32>(x_173.x, x_173.y, x_173.z));
    let x_176 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_179 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_181 : vec3<f32> = vs_TEXCOORD5;
    let x_184 : vec4<f32> = u_xlat4;
    let x_186 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.x, x_181.x, x_181.x)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
    let x_187 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
    let x_190 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_192 : vec3<f32> = vs_TEXCOORD5;
    let x_195 : vec4<f32> = u_xlat4;
    let x_197 : vec3<f32> = ((vec3<f32>(x_190.x, x_190.y, x_190.z) * vec3<f32>(x_192.z, x_192.z, x_192.z)) + vec3<f32>(x_195.x, x_195.y, x_195.z));
    let x_198 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_200 : vec4<f32> = u_xlat4;
    let x_203 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_205 : vec3<f32> = (vec3<f32>(x_200.x, x_200.y, x_200.z) + vec3<f32>(x_203.x, x_203.y, x_203.z));
    let x_206 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : bool = u_xlatb19;
    if (x_208) {
      let x_213 : vec4<f32> = u_xlat4;
      x_210 = vec3<f32>(x_213.x, x_213.y, x_213.z);
    } else {
      let x_216 : vec3<f32> = vs_TEXCOORD5;
      x_210 = x_216;
    }
    let x_217 : vec3<f32> = x_210;
    let x_218 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_220 : vec4<f32> = u_xlat4;
    let x_225 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_227 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + -(x_225));
    let x_228 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
    let x_230 : vec4<f32> = u_xlat4;
    let x_233 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_234 : vec3<f32> = (vec3<f32>(x_230.x, x_230.y, x_230.z) * x_233);
    let x_235 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_235.x, x_234.x, x_234.y, x_234.z);
    let x_238 : f32 = u_xlat4.y;
    u_xlat19 = ((x_238 * 0.25f) + 0.75f);
    let x_246 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_246 * 0.5f) + 0.75f);
    let x_250 : f32 = u_xlat19;
    let x_251 : f32 = u_xlat20;
    u_xlat4.x = max(x_250, x_251);
    let x_262 : vec4<f32> = u_xlat4;
    let x_264 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_262.x, x_262.z, x_262.w));
    u_xlat4 = x_264;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_270 : vec4<f32> = u_xlat4;
  let x_272 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_270, x_272);
  let x_274 : f32 = u_xlat19;
  u_xlat19 = clamp(x_274, 0.0f, 1.0f);
  let x_282 : vec3<f32> = u_xlat3;
  let x_284 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_282.x, x_282.y));
  u_xlat20 = x_284.w;
  let x_286 : f32 = u_xlat19;
  let x_287 : f32 = u_xlat20;
  u_xlat19 = (x_286 * x_287);
  let x_289 : f32 = u_xlat19;
  let x_293 : vec4<f32> = x_37.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_289, x_289, x_289) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec4<f32> = vs_TEXCOORD1;
  let x_300 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_297.x, x_297.y, x_297.z)), x_300);
  let x_302 : f32 = u_xlat19;
  let x_303 : f32 = u_xlat19;
  u_xlat19 = (x_302 + x_303);
  let x_305 : vec3<f32> = u_xlat2;
  let x_306 : f32 = u_xlat19;
  let x_310 : vec4<f32> = vs_TEXCOORD1;
  let x_313 : vec3<f32> = ((x_305 * -(vec3<f32>(x_306, x_306, x_306))) + -(vec3<f32>(x_310.x, x_310.y, x_310.z)));
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_320 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_320;
  let x_324 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_324;
  let x_327 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_327;
  let x_329 : vec3<f32> = u_xlat2;
  let x_330 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_329, x_330);
  let x_332 : f32 = u_xlat19;
  u_xlat19 = clamp(x_332, 0.0f, 1.0f);
  let x_334 : vec4<f32> = u_xlat4;
  let x_336 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), x_336);
  let x_340 : f32 = u_xlat2.x;
  let x_342 : f32 = u_xlat2.x;
  u_xlat2.x = (x_340 * x_342);
  let x_346 : f32 = u_xlat2.x;
  let x_348 : f32 = u_xlat2.x;
  u_xlat2.x = (x_346 * x_348);
  let x_353 : f32 = x_37.x_Glossiness;
  u_xlat2.y = (-(x_353) + 1.0f);
  let x_362 : vec3<f32> = u_xlat2;
  let x_364 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_362.x, x_362.y));
  u_xlat2.x = x_364.x;
  let x_368 : f32 = u_xlat2.x;
  u_xlat2.x = (x_368 * 16.0f);
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = u_xlat2;
  let x_376 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374.x, x_374.x, x_374.x));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec3<f32> = u_xlat1;
  let x_380 : f32 = u_xlat18;
  let x_383 : vec4<f32> = u_xlat0;
  let x_385 : vec3<f32> = ((x_379 * vec3<f32>(x_380, x_380, x_380)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : f32 = u_xlat19;
  let x_390 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_388, x_388, x_388) * x_390);
  let x_392 : vec4<f32> = u_xlat0;
  let x_394 : vec3<f32> = u_xlat1;
  let x_395 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) * x_394);
  let x_396 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
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

