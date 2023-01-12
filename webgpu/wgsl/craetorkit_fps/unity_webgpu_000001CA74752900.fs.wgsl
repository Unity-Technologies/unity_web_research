struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(12)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_Color2 : vec4<f32>,
}

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(3) var sampler_Gradient : sampler;

@group(1) @binding(0) var<uniform> x_99 : PGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_145 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat5 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : f32 = vs_TEXCOORD3;
  u_xlat0.x = (x_12 + -1.0f);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = (x_20 * -9.999998093f);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_25, 0.0f, 1.0f);
  let x_31 : vec4<f32> = u_xlat0;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec2<f32> = (-(vec2<f32>(x_31.x, x_31.x)) + x_36);
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_38.z, x_38.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_50.x, x_50.y));
  u_xlat0.x = x_52.x;
  let x_61 : vec2<f32> = vs_TEXCOORD0;
  let x_62 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_61);
  u_xlat4.x = x_62.z;
  let x_67 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_67 * -2.0f) + 1.0f);
  let x_73 : f32 = u_xlat4.x;
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_73) + x_76);
  let x_83 : f32 = u_xlat0.x;
  u_xlatb0 = (x_83 < 0.0f);
  let x_85 : bool = u_xlatb0;
  if (((select(0i, 1i, x_85) * -1i) != 0i)) {
    discard;
  }
  let x_103 : f32 = x_99.unity_ProbeVolumeParams.x;
  u_xlatb0 = (x_103 == 1.0f);
  let x_105 : bool = u_xlatb0;
  if (x_105) {
    let x_110 : f32 = x_99.unity_ProbeVolumeParams.y;
    u_xlatb0 = (x_110 == 1.0f);
    let x_114 : vec3<f32> = vs_TEXCOORD2;
    let x_119 : vec4<f32> = x_99.unity_ProbeVolumeWorldToObject[1i];
    u_xlat4 = (vec3<f32>(x_114.y, x_114.y, x_114.y) * vec3<f32>(x_119.x, x_119.y, x_119.z));
    let x_123 : vec4<f32> = x_99.unity_ProbeVolumeWorldToObject[0i];
    let x_125 : vec3<f32> = vs_TEXCOORD2;
    let x_128 : vec3<f32> = u_xlat4;
    u_xlat4 = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.x, x_125.x, x_125.x)) + x_128);
    let x_132 : vec4<f32> = x_99.unity_ProbeVolumeWorldToObject[2i];
    let x_134 : vec3<f32> = vs_TEXCOORD2;
    let x_137 : vec3<f32> = u_xlat4;
    u_xlat4 = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.z, x_134.z, x_134.z)) + x_137);
    let x_139 : vec3<f32> = u_xlat4;
    let x_141 : vec4<f32> = x_99.unity_ProbeVolumeWorldToObject[3i];
    u_xlat4 = (x_139 + vec3<f32>(x_141.x, x_141.y, x_141.z));
    let x_144 : bool = u_xlatb0;
    if (x_144) {
      let x_148 : vec3<f32> = u_xlat4;
      x_145 = x_148;
    } else {
      let x_150 : vec3<f32> = vs_TEXCOORD2;
      x_145 = x_150;
    }
    let x_151 : vec3<f32> = x_145;
    let x_152 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_154 : vec4<f32> = u_xlat0;
    let x_159 : vec3<f32> = x_99.unity_ProbeVolumeMin;
    let x_161 : vec3<f32> = (vec3<f32>(x_154.x, x_154.y, x_154.z) + -(x_159));
    let x_162 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_164 : vec4<f32> = u_xlat0;
    let x_168 : vec3<f32> = x_99.unity_ProbeVolumeSizeInv;
    let x_169 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) * x_168);
    let x_170 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_170.x, x_169.x, x_169.y, x_169.z);
    let x_173 : f32 = u_xlat0.y;
    u_xlat4.x = (x_173 * 0.25f);
    let x_179 : f32 = x_99.unity_ProbeVolumeParams.z;
    u_xlat1.x = (x_179 * 0.5f);
    let x_185 : f32 = x_99.unity_ProbeVolumeParams.z;
    u_xlat5 = ((-(x_185) * 0.5f) + 0.25f);
    let x_190 : f32 = u_xlat4.x;
    let x_192 : f32 = u_xlat1.x;
    u_xlat4.x = max(x_190, x_192);
    let x_195 : f32 = u_xlat5;
    let x_197 : f32 = u_xlat4.x;
    u_xlat0.x = min(x_195, x_197);
    let x_208 : vec4<f32> = u_xlat0;
    let x_210 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_208.x, x_208.z, x_208.w));
    u_xlat1 = x_210;
    let x_212 : vec4<f32> = u_xlat0;
    let x_215 : vec3<f32> = (vec3<f32>(x_212.x, x_212.z, x_212.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_216 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_221 : vec4<f32> = u_xlat2;
    let x_223 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_221.x, x_221.y, x_221.z));
    u_xlat2 = x_223;
    let x_224 : vec4<f32> = u_xlat0;
    let x_227 : vec3<f32> = (vec3<f32>(x_224.x, x_224.z, x_224.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_228 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
    let x_233 : vec4<f32> = u_xlat0;
    let x_235 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_233.x, x_233.y, x_233.z));
    u_xlat0 = x_235;
    let x_238 : vec3<f32> = vs_TEXCOORD1;
    let x_239 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
    u_xlat3.w = 1.0f;
    let x_243 : vec4<f32> = u_xlat1;
    let x_244 : vec4<f32> = u_xlat3;
    u_xlat1.x = dot(x_243, x_244);
    let x_247 : vec4<f32> = u_xlat2;
    let x_248 : vec4<f32> = u_xlat3;
    u_xlat1.y = dot(x_247, x_248);
    let x_251 : vec4<f32> = u_xlat0;
    let x_252 : vec4<f32> = u_xlat3;
    u_xlat1.z = dot(x_251, x_252);
  } else {
    let x_256 : vec3<f32> = vs_TEXCOORD1;
    let x_257 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    u_xlat0.w = 1.0f;
    let x_261 : vec4<f32> = x_99.unity_SHAr;
    let x_262 : vec4<f32> = u_xlat0;
    u_xlat1.x = dot(x_261, x_262);
    let x_266 : vec4<f32> = x_99.unity_SHAg;
    let x_267 : vec4<f32> = u_xlat0;
    u_xlat1.y = dot(x_266, x_267);
    let x_271 : vec4<f32> = x_99.unity_SHAb;
    let x_272 : vec4<f32> = u_xlat0;
    u_xlat1.z = dot(x_271, x_272);
  }
  let x_275 : vec4<f32> = u_xlat1;
  let x_278 : vec3<f32> = vs_TEXCOORD6;
  let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) + x_278);
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat0;
  let x_285 : vec3<f32> = max(vec3<f32>(x_282.x, x_282.y, x_282.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_290 : vec4<f32> = x_99.x_Color;
  let x_294 : vec3<f32> = (vec3<f32>(x_290.x, x_290.y, x_290.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_301 : f32 = x_99.x_Metallic;
  let x_303 : f32 = x_99.x_Metallic;
  let x_305 : f32 = x_99.x_Metallic;
  let x_306 : vec3<f32> = vec3<f32>(x_301, x_303, x_305);
  let x_311 : vec4<f32> = u_xlat1;
  let x_316 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_311.x, x_311.y, x_311.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_317 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_321 : f32 = x_99.x_Metallic;
  u_xlat12 = ((-(x_321) * 0.959999979f) + 0.959999979f);
  let x_326 : f32 = u_xlat12;
  let x_329 : vec4<f32> = x_99.x_Color;
  let x_331 : vec3<f32> = (vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = u_xlat0;
  let x_341 : vec4<f32> = x_99.x_Color2;
  let x_343 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.x, x_336.y, x_336.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = exp2(-(vec3<f32>(x_347.x, x_347.y, x_347.z)));
  let x_351 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec4<f32> = u_xlat1;
  let x_355 : vec3<f32> = vec3<f32>(x_354.x, x_354.y, x_354.z);
  let x_356 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  SV_Target0.w = 1.0f;
  let x_362 : f32 = x_99.x_Glossiness;
  SV_Target1.w = x_362;
  let x_365 : vec3<f32> = vs_TEXCOORD1;
  let x_368 : vec3<f32> = ((x_365 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_369 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target3, SV_Target0, SV_Target2);
}

