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
  x_GlossMapScale : f32,
  @size(12)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat23 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat7 : f32;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_229 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  u_xlat2 = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_55 : vec4<f32> = x_46.x_Color;
  let x_57 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * x_57) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_62.x, x_62.x, x_62.x) * x_64) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.z;
  let x_93 : f32 = u_xlat3.x;
  u_xlat3.x = (x_91 * x_93);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat14;
  let x_108 : vec2<f32> = u_xlat14;
  u_xlat22 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat22;
  u_xlat22 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_116);
  let x_118 : vec2<f32> = u_xlat14;
  let x_121 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_118.y, x_118.y, x_118.y) * vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_125 : vec4<f32> = vs_TEXCOORD2;
  let x_127 : vec2<f32> = u_xlat14;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_127.x, x_127.x, x_127.x)) + x_130);
  let x_133 : vec4<f32> = vs_TEXCOORD4;
  let x_135 : f32 = u_xlat22;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135, x_135, x_135)) + x_138);
  let x_142 : vec3<f32> = vs_TEXCOORD5;
  let x_147 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat14 = (vec2<f32>(x_142.y, x_142.y) * vec2<f32>(x_147.x, x_147.y));
  let x_152 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_154 : vec3<f32> = vs_TEXCOORD5;
  let x_157 : vec2<f32> = u_xlat14;
  u_xlat14 = ((vec2<f32>(x_152.x, x_152.y) * vec2<f32>(x_154.x, x_154.x)) + x_157);
  let x_161 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_163 : vec3<f32> = vs_TEXCOORD5;
  let x_166 : vec2<f32> = u_xlat14;
  u_xlat14 = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_163.z, x_163.z)) + x_166);
  let x_168 : vec2<f32> = u_xlat14;
  let x_171 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat14 = (x_168 + vec2<f32>(x_171.x, x_171.y));
  let x_179 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_179 == 1.0f);
  let x_181 : bool = u_xlatb22;
  if (x_181) {
    let x_186 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_186 == 1.0f);
    let x_189 : vec3<f32> = vs_TEXCOORD5;
    let x_192 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_194 : vec3<f32> = (vec3<f32>(x_189.y, x_189.y, x_189.y) * vec3<f32>(x_192.x, x_192.y, x_192.z));
    let x_195 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_198 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_200 : vec3<f32> = vs_TEXCOORD5;
    let x_203 : vec4<f32> = u_xlat4;
    let x_205 : vec3<f32> = ((vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.x, x_200.x, x_200.x)) + vec3<f32>(x_203.x, x_203.y, x_203.z));
    let x_206 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_209 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_211 : vec3<f32> = vs_TEXCOORD5;
    let x_214 : vec4<f32> = u_xlat4;
    let x_216 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.z, x_211.z, x_211.z)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
    let x_217 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
    let x_219 : vec4<f32> = u_xlat4;
    let x_222 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_224 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + vec3<f32>(x_222.x, x_222.y, x_222.z));
    let x_225 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : bool = u_xlatb22;
    if (x_227) {
      let x_232 : vec4<f32> = u_xlat4;
      x_229 = vec3<f32>(x_232.x, x_232.y, x_232.z);
    } else {
      let x_235 : vec3<f32> = vs_TEXCOORD5;
      x_229 = x_235;
    }
    let x_236 : vec3<f32> = x_229;
    let x_237 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    let x_239 : vec4<f32> = u_xlat4;
    let x_244 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_246 : vec3<f32> = (vec3<f32>(x_239.x, x_239.y, x_239.z) + -(x_244));
    let x_247 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_249 : vec4<f32> = u_xlat4;
    let x_252 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_253 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) * x_252);
    let x_254 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_254.x, x_253.x, x_253.y, x_253.z);
    let x_257 : f32 = u_xlat4.y;
    u_xlat22 = ((x_257 * 0.25f) + 0.75f);
    let x_264 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_264 * 0.5f) + 0.75f);
    let x_268 : f32 = u_xlat22;
    let x_269 : f32 = u_xlat23;
    u_xlat4.x = max(x_268, x_269);
    let x_280 : vec4<f32> = u_xlat4;
    let x_282 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_280.x, x_280.z, x_280.w));
    u_xlat4 = x_282;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_289, x_291);
  let x_293 : f32 = u_xlat22;
  u_xlat22 = clamp(x_293, 0.0f, 1.0f);
  let x_301 : vec2<f32> = u_xlat14;
  let x_302 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_301);
  u_xlat14.x = x_302.w;
  let x_305 : f32 = u_xlat22;
  let x_307 : f32 = u_xlat14.x;
  u_xlat14.x = (x_305 * x_307);
  let x_310 : vec2<f32> = u_xlat14;
  let x_314 : vec4<f32> = x_46.x_LightColor0;
  let x_316 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : vec4<f32> = vs_TEXCOORD1;
  let x_323 : vec3<f32> = u_xlat3;
  u_xlat14.x = dot(-(vec3<f32>(x_320.x, x_320.y, x_320.z)), x_323);
  let x_327 : f32 = u_xlat14.x;
  let x_329 : f32 = u_xlat14.x;
  u_xlat14.x = (x_327 + x_329);
  let x_333 : vec3<f32> = u_xlat3;
  let x_334 : vec2<f32> = u_xlat14;
  let x_338 : vec4<f32> = vs_TEXCOORD1;
  u_xlat5 = ((x_333 * -(vec3<f32>(x_334.x, x_334.x, x_334.x))) + -(vec3<f32>(x_338.x, x_338.y, x_338.z)));
  let x_345 : f32 = vs_TEXCOORD2.w;
  u_xlat6.x = x_345;
  let x_348 : f32 = vs_TEXCOORD3.w;
  u_xlat6.y = x_348;
  let x_351 : f32 = vs_TEXCOORD4.w;
  u_xlat6.z = x_351;
  let x_353 : vec3<f32> = u_xlat3;
  let x_354 : vec3<f32> = u_xlat6;
  u_xlat14.x = dot(x_353, x_354);
  let x_358 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_358, 0.0f, 1.0f);
  let x_362 : vec3<f32> = u_xlat5;
  let x_363 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_362, x_363);
  let x_365 : f32 = u_xlat21;
  let x_366 : f32 = u_xlat21;
  u_xlat21 = (x_365 * x_366);
  let x_368 : f32 = u_xlat21;
  let x_369 : f32 = u_xlat21;
  u_xlat3.x = (x_368 * x_369);
  let x_373 : f32 = u_xlat0.y;
  let x_377 : f32 = x_46.x_GlossMapScale;
  u_xlat3.y = ((-(x_373) * x_377) + 1.0f);
  let x_387 : vec3<f32> = u_xlat3;
  let x_389 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_387.x, x_387.y));
  u_xlat7 = x_389.x;
  let x_391 : f32 = u_xlat7;
  u_xlat7 = (x_391 * 16.0f);
  let x_394 : vec3<f32> = u_xlat1;
  let x_395 : f32 = u_xlat7;
  u_xlat1 = (x_394 * vec3<f32>(x_395, x_395, x_395));
  let x_398 : vec3<f32> = u_xlat2;
  let x_399 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = u_xlat1;
  let x_403 : vec3<f32> = ((x_398 * vec3<f32>(x_399.x, x_399.x, x_399.x)) + x_402);
  let x_404 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_403.z);
  let x_406 : vec2<f32> = u_xlat14;
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_406.x, x_406.x, x_406.x) * vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = u_xlat1;
  let x_416 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.w) * x_415);
  let x_417 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

