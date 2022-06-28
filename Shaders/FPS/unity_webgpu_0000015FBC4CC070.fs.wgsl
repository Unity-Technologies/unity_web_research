struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat12 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat14 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_147 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat12 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_31);
  let x_33 : f32 = u_xlat12;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat1 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat1;
  let x_57 : vec4<f32> = x_18.x_Color;
  u_xlat1 = (x_54 * vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  let x_67 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat2 = (vec4<f32>(x_62.y, x_62.y, x_62.y, x_62.y) * x_67);
  let x_70 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_71 : vec3<f32> = vs_TEXCOORD2;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_78 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_79 : vec3<f32> = vs_TEXCOORD2;
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_78 * vec4<f32>(x_79.z, x_79.z, x_79.z, x_79.z)) + x_82);
  let x_84 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat2 = (x_84 + x_87);
  let x_96 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb12 = (x_96 == 1.0f);
  let x_99 : bool = u_xlatb12;
  if (x_99) {
    let x_104 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb12 = (x_104 == 1.0f);
    let x_107 : vec3<f32> = vs_TEXCOORD2;
    let x_110 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_112 : vec3<f32> = (vec3<f32>(x_107.y, x_107.y, x_107.y) * vec3<f32>(x_110.x, x_110.y, x_110.z));
    let x_113 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
    let x_116 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_118 : vec3<f32> = vs_TEXCOORD2;
    let x_121 : vec4<f32> = u_xlat3;
    let x_123 : vec3<f32> = ((vec3<f32>(x_116.x, x_116.y, x_116.z) * vec3<f32>(x_118.x, x_118.x, x_118.x)) + vec3<f32>(x_121.x, x_121.y, x_121.z));
    let x_124 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
    let x_127 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_129 : vec3<f32> = vs_TEXCOORD2;
    let x_132 : vec4<f32> = u_xlat3;
    let x_134 : vec3<f32> = ((vec3<f32>(x_127.x, x_127.y, x_127.z) * vec3<f32>(x_129.z, x_129.z, x_129.z)) + vec3<f32>(x_132.x, x_132.y, x_132.z));
    let x_135 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
    let x_137 : vec4<f32> = u_xlat3;
    let x_140 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_142 : vec3<f32> = (vec3<f32>(x_137.x, x_137.y, x_137.z) + vec3<f32>(x_140.x, x_140.y, x_140.z));
    let x_143 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
    let x_145 : bool = u_xlatb12;
    if (x_145) {
      let x_150 : vec4<f32> = u_xlat3;
      x_147 = vec3<f32>(x_150.x, x_150.y, x_150.z);
    } else {
      let x_153 : vec3<f32> = vs_TEXCOORD2;
      x_147 = x_153;
    }
    let x_154 : vec3<f32> = x_147;
    let x_155 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
    let x_157 : vec4<f32> = u_xlat3;
    let x_162 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_164 : vec3<f32> = (vec3<f32>(x_157.x, x_157.y, x_157.z) + -(x_162));
    let x_165 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_167 : vec4<f32> = u_xlat3;
    let x_171 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_172 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) * x_171);
    let x_173 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_173.x, x_172.x, x_172.y, x_172.z);
    let x_176 : f32 = u_xlat3.y;
    u_xlat12 = ((x_176 * 0.25f) + 0.75f);
    let x_184 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat13 = ((x_184 * 0.5f) + 0.75f);
    let x_188 : f32 = u_xlat12;
    let x_189 : f32 = u_xlat13;
    u_xlat3.x = max(x_188, x_189);
    let x_200 : vec4<f32> = u_xlat3;
    let x_202 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_200.x, x_200.z, x_200.w));
    u_xlat3 = x_202;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_209 : vec4<f32> = u_xlat3;
  let x_211 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat12 = dot(x_209, x_211);
  let x_213 : f32 = u_xlat12;
  u_xlat12 = clamp(x_213, 0.0f, 1.0f);
  let x_218 : f32 = u_xlat2.z;
  u_xlatb13 = (0.0f < x_218);
  let x_220 : bool = u_xlatb13;
  u_xlat13 = select(0.0f, 1.0f, x_220);
  let x_222 : vec4<f32> = u_xlat2;
  let x_224 : vec4<f32> = u_xlat2;
  let x_226 : vec2<f32> = (vec2<f32>(x_222.x, x_222.y) / vec2<f32>(x_224.w, x_224.w));
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat3;
  let x_232 : vec2<f32> = (vec2<f32>(x_229.x, x_229.y) + vec2<f32>(0.5f, 0.5f));
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_232.x, x_232.y, x_233.z, x_233.w);
  let x_241 : vec4<f32> = u_xlat3;
  let x_243 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_241.x, x_241.y));
  u_xlat14 = x_243.w;
  let x_245 : f32 = u_xlat13;
  let x_246 : f32 = u_xlat14;
  u_xlat13 = (x_245 * x_246);
  let x_248 : vec4<f32> = u_xlat2;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_248.x, x_248.y, x_248.z), vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_259 : vec4<f32> = u_xlat2;
  let x_261 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_259.x, x_259.x));
  u_xlat2.x = x_261.x;
  let x_264 : f32 = u_xlat13;
  let x_266 : f32 = u_xlat2.x;
  u_xlat13 = (x_264 * x_266);
  let x_268 : f32 = u_xlat12;
  let x_269 : f32 = u_xlat13;
  u_xlat12 = (x_268 * x_269);
  let x_271 : f32 = u_xlat12;
  let x_275 : vec4<f32> = x_18.x_LightColor0;
  let x_277 : vec3<f32> = (vec3<f32>(x_271, x_271, x_271) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : vec3<f32> = vs_TEXCOORD1;
  let x_282 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_281, x_282);
  let x_286 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_286, 0.0f);
  let x_290 : vec3<f32> = u_xlat1;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_290 * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : vec3<f32> = u_xlat0;
  let x_298 : vec3<f32> = u_xlat4;
  let x_299 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * x_298);
  let x_300 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

