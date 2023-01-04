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

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat20 : f32;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb20 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_195 : vec3<f32>;
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
  u_xlat3 = (vec4<f32>(x_111.y, x_111.y, x_111.y, x_111.y) * x_116);
  let x_120 : vec4<f32> = x_37.unity_WorldToLight[0i];
  let x_121 : vec3<f32> = vs_TEXCOORD5;
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_120 * vec4<f32>(x_121.x, x_121.x, x_121.x, x_121.x)) + x_124);
  let x_128 : vec4<f32> = x_37.unity_WorldToLight[2i];
  let x_129 : vec3<f32> = vs_TEXCOORD5;
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_128 * vec4<f32>(x_129.z, x_129.z, x_129.z, x_129.z)) + x_132);
  let x_134 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = x_37.unity_WorldToLight[3i];
  u_xlat3 = (x_134 + x_137);
  let x_144 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_144 == 1.0f);
  let x_147 : bool = u_xlatb19;
  if (x_147) {
    let x_152 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_152 == 1.0f);
    let x_155 : vec3<f32> = vs_TEXCOORD5;
    let x_158 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_160 : vec3<f32> = (vec3<f32>(x_155.y, x_155.y, x_155.y) * vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_161 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_164 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_166 : vec3<f32> = vs_TEXCOORD5;
    let x_169 : vec4<f32> = u_xlat4;
    let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.x, x_166.x, x_166.x)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
    let x_172 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_175 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_177 : vec3<f32> = vs_TEXCOORD5;
    let x_180 : vec4<f32> = u_xlat4;
    let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.z, x_177.z, x_177.z)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
    let x_183 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
    let x_185 : vec4<f32> = u_xlat4;
    let x_188 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_190 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + vec3<f32>(x_188.x, x_188.y, x_188.z));
    let x_191 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_193 : bool = u_xlatb19;
    if (x_193) {
      let x_198 : vec4<f32> = u_xlat4;
      x_195 = vec3<f32>(x_198.x, x_198.y, x_198.z);
    } else {
      let x_201 : vec3<f32> = vs_TEXCOORD5;
      x_195 = x_201;
    }
    let x_202 : vec3<f32> = x_195;
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_205 : vec4<f32> = u_xlat4;
    let x_210 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_212 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + -(x_210));
    let x_213 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_215 : vec4<f32> = u_xlat4;
    let x_218 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) * x_218);
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_220.x, x_219.x, x_219.y, x_219.z);
    let x_223 : f32 = u_xlat4.y;
    u_xlat19 = ((x_223 * 0.25f) + 0.75f);
    let x_231 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_231 * 0.5f) + 0.75f);
    let x_235 : f32 = u_xlat19;
    let x_236 : f32 = u_xlat20;
    u_xlat4.x = max(x_235, x_236);
    let x_247 : vec4<f32> = u_xlat4;
    let x_249 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_247.x, x_247.z, x_247.w));
    u_xlat4 = x_249;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_255, x_257);
  let x_259 : f32 = u_xlat19;
  u_xlat19 = clamp(x_259, 0.0f, 1.0f);
  let x_264 : f32 = u_xlat3.z;
  u_xlatb20 = (0.0f < x_264);
  let x_266 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_266);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec2<f32> = (vec2<f32>(x_268.x, x_268.y) / vec2<f32>(x_270.w, x_270.w));
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_272.x, x_272.y, x_273.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat4;
  let x_278 : vec2<f32> = (vec2<f32>(x_275.x, x_275.y) + vec2<f32>(0.5f, 0.5f));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
  let x_287 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_287.x, x_287.y));
  u_xlat21 = x_289.w;
  let x_291 : f32 = u_xlat20;
  let x_292 : f32 = u_xlat21;
  u_xlat20 = (x_291 * x_292);
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_305 : vec4<f32> = u_xlat3;
  let x_307 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_305.x, x_305.x));
  u_xlat3.x = x_307.x;
  let x_310 : f32 = u_xlat20;
  let x_312 : f32 = u_xlat3.x;
  u_xlat20 = (x_310 * x_312);
  let x_314 : f32 = u_xlat19;
  let x_315 : f32 = u_xlat20;
  u_xlat19 = (x_314 * x_315);
  let x_317 : f32 = u_xlat19;
  let x_321 : vec4<f32> = x_37.x_LightColor0;
  let x_323 : vec3<f32> = (vec3<f32>(x_317, x_317, x_317) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : vec4<f32> = vs_TEXCOORD1;
  let x_330 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_327.x, x_327.y, x_327.z)), x_330);
  let x_332 : f32 = u_xlat19;
  let x_333 : f32 = u_xlat19;
  u_xlat19 = (x_332 + x_333);
  let x_335 : vec3<f32> = u_xlat2;
  let x_336 : f32 = u_xlat19;
  let x_340 : vec4<f32> = vs_TEXCOORD1;
  let x_343 : vec3<f32> = ((x_335 * -(vec3<f32>(x_336, x_336, x_336))) + -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_350 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_350;
  let x_354 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_354;
  let x_357 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_357;
  let x_359 : vec3<f32> = u_xlat2;
  let x_360 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_359, x_360);
  let x_362 : f32 = u_xlat19;
  u_xlat19 = clamp(x_362, 0.0f, 1.0f);
  let x_364 : vec4<f32> = u_xlat4;
  let x_366 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_364.x, x_364.y, x_364.z), x_366);
  let x_370 : f32 = u_xlat2.x;
  let x_372 : f32 = u_xlat2.x;
  u_xlat2.x = (x_370 * x_372);
  let x_376 : f32 = u_xlat2.x;
  let x_378 : f32 = u_xlat2.x;
  u_xlat2.x = (x_376 * x_378);
  let x_383 : f32 = x_37.x_Glossiness;
  u_xlat2.y = (-(x_383) + 1.0f);
  let x_392 : vec3<f32> = u_xlat2;
  let x_394 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_392.x, x_392.y));
  u_xlat2.x = x_394.x;
  let x_398 : f32 = u_xlat2.x;
  u_xlat2.x = (x_398 * 16.0f);
  let x_402 : vec4<f32> = u_xlat0;
  let x_404 : vec3<f32> = u_xlat2;
  let x_406 : vec3<f32> = (vec3<f32>(x_402.x, x_402.y, x_402.z) * vec3<f32>(x_404.x, x_404.x, x_404.x));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec3<f32> = u_xlat1;
  let x_410 : f32 = u_xlat18;
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = ((x_409 * vec3<f32>(x_410, x_410, x_410)) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : f32 = u_xlat19;
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_418, x_418, x_418) * vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat0;
  let x_425 : vec3<f32> = u_xlat1;
  let x_426 : vec3<f32> = (vec3<f32>(x_423.x, x_423.y, x_423.z) * x_425);
  let x_427 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
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

