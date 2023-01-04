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
  var x_199 : vec3<f32>;
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
  u_xlat3 = (vec3<f32>(x_111.y, x_111.y, x_111.y) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_121 : vec4<f32> = x_37.unity_WorldToLight[0i];
  let x_123 : vec3<f32> = vs_TEXCOORD5;
  let x_126 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(x_123.x, x_123.x, x_123.x)) + x_126);
  let x_130 : vec4<f32> = x_37.unity_WorldToLight[2i];
  let x_132 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_130.x, x_130.y, x_130.z) * vec3<f32>(x_132.z, x_132.z, x_132.z)) + x_135);
  let x_137 : vec3<f32> = u_xlat3;
  let x_140 : vec4<f32> = x_37.unity_WorldToLight[3i];
  u_xlat3 = (x_137 + vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_148 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_148 == 1.0f);
  let x_151 : bool = u_xlatb19;
  if (x_151) {
    let x_156 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_156 == 1.0f);
    let x_159 : vec3<f32> = vs_TEXCOORD5;
    let x_162 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_164 : vec3<f32> = (vec3<f32>(x_159.y, x_159.y, x_159.y) * vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_168 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_170 : vec3<f32> = vs_TEXCOORD5;
    let x_173 : vec4<f32> = u_xlat4;
    let x_175 : vec3<f32> = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.x, x_170.x, x_170.x)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
    let x_176 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_179 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_181 : vec3<f32> = vs_TEXCOORD5;
    let x_184 : vec4<f32> = u_xlat4;
    let x_186 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.z, x_181.z, x_181.z)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
    let x_187 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
    let x_189 : vec4<f32> = u_xlat4;
    let x_192 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_194 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(x_192.x, x_192.y, x_192.z));
    let x_195 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : bool = u_xlatb19;
    if (x_197) {
      let x_202 : vec4<f32> = u_xlat4;
      x_199 = vec3<f32>(x_202.x, x_202.y, x_202.z);
    } else {
      let x_205 : vec3<f32> = vs_TEXCOORD5;
      x_199 = x_205;
    }
    let x_206 : vec3<f32> = x_199;
    let x_207 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_209 : vec4<f32> = u_xlat4;
    let x_214 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_216 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) + -(x_214));
    let x_217 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
    let x_219 : vec4<f32> = u_xlat4;
    let x_222 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_223 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) * x_222);
    let x_224 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_224.x, x_223.x, x_223.y, x_223.z);
    let x_227 : f32 = u_xlat4.y;
    u_xlat19 = ((x_227 * 0.25f) + 0.75f);
    let x_235 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_235 * 0.5f) + 0.75f);
    let x_239 : f32 = u_xlat19;
    let x_240 : f32 = u_xlat20;
    u_xlat4.x = max(x_239, x_240);
    let x_251 : vec4<f32> = u_xlat4;
    let x_253 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_251.x, x_251.z, x_251.w));
    u_xlat4 = x_253;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_259, x_261);
  let x_263 : f32 = u_xlat19;
  u_xlat19 = clamp(x_263, 0.0f, 1.0f);
  let x_266 : vec3<f32> = u_xlat3;
  let x_267 : vec3<f32> = u_xlat3;
  u_xlat20 = dot(x_266, x_267);
  let x_274 : f32 = u_xlat20;
  let x_276 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_274, x_274));
  u_xlat20 = x_276.x;
  let x_278 : f32 = u_xlat19;
  let x_279 : f32 = u_xlat20;
  u_xlat19 = (x_278 * x_279);
  let x_281 : f32 = u_xlat19;
  let x_285 : vec4<f32> = x_37.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_281, x_281, x_281) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = vs_TEXCOORD1;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_289.x, x_289.y, x_289.z)), x_292);
  let x_294 : f32 = u_xlat19;
  let x_295 : f32 = u_xlat19;
  u_xlat19 = (x_294 + x_295);
  let x_297 : vec3<f32> = u_xlat2;
  let x_298 : f32 = u_xlat19;
  let x_302 : vec4<f32> = vs_TEXCOORD1;
  let x_305 : vec3<f32> = ((x_297 * -(vec3<f32>(x_298, x_298, x_298))) + -(vec3<f32>(x_302.x, x_302.y, x_302.z)));
  let x_306 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_312 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_312;
  let x_316 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_316;
  let x_319 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_319;
  let x_321 : vec3<f32> = u_xlat2;
  let x_322 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_321, x_322);
  let x_324 : f32 = u_xlat19;
  u_xlat19 = clamp(x_324, 0.0f, 1.0f);
  let x_326 : vec4<f32> = u_xlat4;
  let x_328 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_326.x, x_326.y, x_326.z), x_328);
  let x_332 : f32 = u_xlat2.x;
  let x_334 : f32 = u_xlat2.x;
  u_xlat2.x = (x_332 * x_334);
  let x_338 : f32 = u_xlat2.x;
  let x_340 : f32 = u_xlat2.x;
  u_xlat2.x = (x_338 * x_340);
  let x_345 : f32 = x_37.x_Glossiness;
  u_xlat2.y = (-(x_345) + 1.0f);
  let x_354 : vec3<f32> = u_xlat2;
  let x_356 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_354.x, x_354.y));
  u_xlat2.x = x_356.x;
  let x_360 : f32 = u_xlat2.x;
  u_xlat2.x = (x_360 * 16.0f);
  let x_364 : vec4<f32> = u_xlat0;
  let x_366 : vec3<f32> = u_xlat2;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366.x, x_366.x, x_366.x));
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec3<f32> = u_xlat1;
  let x_372 : f32 = u_xlat18;
  let x_375 : vec4<f32> = u_xlat0;
  let x_377 : vec3<f32> = ((x_371 * vec3<f32>(x_372, x_372, x_372)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : f32 = u_xlat19;
  let x_382 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_380, x_380, x_380) * x_382);
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec3<f32> = u_xlat1;
  let x_387 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) * x_386);
  let x_388 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
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
