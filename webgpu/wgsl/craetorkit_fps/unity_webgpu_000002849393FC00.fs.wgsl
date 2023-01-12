struct PGlobals {
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Scale : f32,
  @size(4)
  padding : u32,
  x_OctaveIndex : vec4<i32>,
}

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_VolumeNoise : texture_3d<f32>;

@group(0) @binding(5) var sampler_VolumeNoise : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(4) var sampler_AlbedoRamp2 : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(3) var sampler_AlbedoRamp1 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati2 : vec4<i32>;
  var u_xlat12 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat3 : vec4<f32>;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat4 : f32;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD1;
  let x_22 : f32 = x_18.x_Scale;
  let x_24 : f32 = x_18.x_Scale;
  let x_26 : f32 = x_18.x_Scale;
  let x_27 : vec3<f32> = vec3<f32>(x_22, x_24, x_26);
  let x_32 : vec3<f32> = (x_13 * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_32.x, x_32.y, x_32.z, x_33.w);
  let x_36 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = (vec3<f32>(x_36.x, x_36.y, x_36.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_41 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_53 : vec4<f32> = u_xlat1;
  let x_55 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_53.x, x_53.y, x_53.z));
  u_xlat1 = x_55;
  let x_61 : vec4<i32> = x_18.x_OctaveIndex;
  u_xlati2 = min(x_61, vec4<i32>(3i, 3i, 3i, 3i));
  let x_66 : vec4<f32> = u_xlat1;
  let x_81 : i32 = u_xlati2.y;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_86 : vec4<u32> = indexable[x_81];
  u_xlat12 = dot(x_66, bitcast<vec4<f32>>(x_86));
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_92.x, x_92.y, x_92.z));
  u_xlat1 = x_94;
  let x_95 : vec4<f32> = u_xlat1;
  let x_97 : i32 = u_xlati2.x;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_100 : vec4<u32> = indexable_1[x_97];
  u_xlat1.x = dot(x_95, bitcast<vec4<f32>>(x_100));
  let x_104 : f32 = u_xlat12;
  let x_108 : f32 = u_xlat1.x;
  u_xlat12 = ((x_104 * 0.5f) + x_108);
  let x_110 : vec4<f32> = u_xlat0;
  let x_114 : vec3<f32> = (vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat0;
  let x_121 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_128.x, x_128.y, x_128.z));
  u_xlat3 = x_130;
  let x_131 : vec4<f32> = u_xlat3;
  let x_134 : i32 = u_xlati2.w;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_137 : vec4<u32> = indexable_2[x_134];
  u_xlat0.x = dot(x_131, bitcast<vec4<f32>>(x_137));
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_144.x, x_144.y, x_144.z));
  u_xlat1 = x_146;
  let x_148 : vec4<f32> = u_xlat1;
  let x_151 : i32 = u_xlati2.z;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_154 : vec4<u32> = indexable_3[x_151];
  u_xlat4 = dot(x_148, bitcast<vec4<f32>>(x_154));
  let x_157 : f32 = u_xlat4;
  let x_160 : f32 = u_xlat12;
  u_xlat4 = ((x_157 * 0.25f) + x_160);
  let x_163 : f32 = u_xlat0.x;
  let x_166 : f32 = u_xlat4;
  u_xlat0.x = ((x_163 * 0.125f) + x_166);
  let x_170 : f32 = u_xlat0.x;
  u_xlat0.x = (x_170 * 0.533333361f);
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_183.x, x_183.x));
  u_xlat1 = x_185;
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_191.x, x_191.x));
  u_xlat0 = x_193;
  let x_194 : vec4<f32> = u_xlat0;
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_194) + x_196);
  let x_200 : vec4<f32> = vs_COLOR0;
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_200.w, x_200.w, x_200.w, x_200.w) * x_202) + x_204);
  let x_208 : f32 = x_18.x_Metallic;
  u_xlat1.x = ((-(x_208) * 0.959999979f) + 0.959999979f);
  let x_214 : vec4<f32> = u_xlat0;
  let x_216 : vec4<f32> = u_xlat1;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x));
  let x_219 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_223 : vec4<f32> = u_xlat1;
  let x_224 : vec3<f32> = vec3<f32>(x_223.x, x_223.y, x_223.z);
  let x_225 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = vs_TEXCOORD4;
  let x_231 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) * x_230);
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec4<f32> = u_xlat1;
  let x_238 : vec3<f32> = exp2(-(vec3<f32>(x_235.x, x_235.y, x_235.z)));
  let x_239 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  SV_Target0.w = 1.0f;
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_253 : f32 = u_xlat0.w;
  let x_256 : f32 = x_18.x_Glossiness;
  SV_Target1.w = (x_253 * x_256);
  let x_260 : f32 = x_18.x_Metallic;
  let x_262 : f32 = x_18.x_Metallic;
  let x_264 : f32 = x_18.x_Metallic;
  let x_265 : vec3<f32> = vec3<f32>(x_260, x_262, x_264);
  let x_270 : vec4<f32> = u_xlat0;
  let x_275 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_270.x, x_270.y, x_270.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_276 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_280 : vec3<f32> = vs_TEXCOORD0;
  let x_283 : vec3<f32> = ((x_280 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_284 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target3, SV_Target1, SV_Target2);
}

