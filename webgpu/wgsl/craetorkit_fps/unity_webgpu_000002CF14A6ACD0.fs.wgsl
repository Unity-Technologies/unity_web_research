struct PGlobals {
  x_Scale : f32,
  @size(12)
  padding : u32,
  x_OctaveIndex : vec4<i32>,
  unity_MetaFragmentControl : vec4<u32>,
  unity_OneOverOutputBoost : f32,
  unity_MaxOutputValue : f32,
}

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_20 : PGlobals;

@group(0) @binding(0) var x_VolumeNoise : texture_3d<f32>;

@group(0) @binding(5) var sampler_VolumeNoise : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(4) var sampler_AlbedoRamp2 : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(3) var sampler_AlbedoRamp1 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

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
  var u_xlat4 : vec3<f32>;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD0;
  let x_24 : f32 = x_20.x_Scale;
  let x_26 : f32 = x_20.x_Scale;
  let x_28 : f32 = x_20.x_Scale;
  let x_29 : vec3<f32> = vec3<f32>(x_24, x_26, x_28);
  let x_34 : vec3<f32> = (x_13 * vec3<f32>(x_29.x, x_29.y, x_29.z));
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_38 : vec4<f32> = u_xlat0;
  let x_42 : vec3<f32> = (vec3<f32>(x_38.x, x_38.y, x_38.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_42.x, x_42.y, x_42.z, x_43.w);
  let x_55 : vec4<f32> = u_xlat1;
  let x_57 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_55.x, x_55.y, x_55.z));
  u_xlat1 = x_57;
  let x_63 : vec4<i32> = x_20.x_OctaveIndex;
  u_xlati2 = min(x_63, vec4<i32>(3i, 3i, 3i, 3i));
  let x_69 : vec4<f32> = u_xlat1;
  let x_82 : i32 = u_xlati2.y;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_87 : vec4<u32> = indexable[x_82];
  u_xlat12 = dot(x_69, bitcast<vec4<f32>>(x_87));
  let x_93 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_93.x, x_93.y, x_93.z));
  u_xlat1 = x_95;
  let x_96 : vec4<f32> = u_xlat1;
  let x_98 : i32 = u_xlati2.x;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_101 : vec4<u32> = indexable_1[x_98];
  u_xlat1.x = dot(x_96, bitcast<vec4<f32>>(x_101));
  let x_105 : f32 = u_xlat12;
  let x_109 : f32 = u_xlat1.x;
  u_xlat12 = ((x_105 * 0.5f) + x_109);
  let x_111 : vec4<f32> = u_xlat0;
  let x_115 : vec3<f32> = (vec3<f32>(x_111.x, x_111.y, x_111.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_118 : vec4<f32> = u_xlat0;
  let x_122 : vec3<f32> = (vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_129 : vec4<f32> = u_xlat0;
  let x_131 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_129.x, x_129.y, x_129.z));
  u_xlat3 = x_131;
  let x_132 : vec4<f32> = u_xlat3;
  let x_135 : i32 = u_xlati2.w;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_138 : vec4<u32> = indexable_2[x_135];
  u_xlat0.x = dot(x_132, bitcast<vec4<f32>>(x_138));
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_145.x, x_145.y, x_145.z));
  u_xlat1 = x_147;
  let x_150 : vec4<f32> = u_xlat1;
  let x_153 : i32 = u_xlati2.z;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_156 : vec4<u32> = indexable_3[x_153];
  u_xlat4.x = dot(x_150, bitcast<vec4<f32>>(x_156));
  let x_161 : f32 = u_xlat4.x;
  let x_164 : f32 = u_xlat12;
  u_xlat4.x = ((x_161 * 0.25f) + x_164);
  let x_168 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_168 * 0.125f) + x_172);
  let x_176 : f32 = u_xlat0.x;
  u_xlat0.x = (x_176 * 0.533333361f);
  let x_189 : vec4<f32> = u_xlat0;
  let x_191 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_189.x, x_189.x));
  u_xlat4 = vec3<f32>(x_191.x, x_191.y, x_191.z);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_198.x, x_198.x));
  let x_201 : vec3<f32> = vec3<f32>(x_200.x, x_200.y, x_200.z);
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec3<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = (x_204 + -(vec3<f32>(x_205.x, x_205.y, x_205.z)));
  let x_209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_213 : vec4<f32> = vs_COLOR0;
  let x_215 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.w, x_213.w, x_213.w) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : vec3<f32> = log2(vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_229 : f32 = x_20.unity_OneOverOutputBoost;
  u_xlat12 = x_229;
  let x_230 : f32 = u_xlat12;
  u_xlat12 = clamp(x_230, 0.0f, 1.0f);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : f32 = u_xlat12;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236, x_236, x_236));
  let x_239 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat0;
  let x_243 : vec3<f32> = exp2(vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat0;
  let x_250 : f32 = x_20.unity_MaxOutputValue;
  let x_252 : f32 = x_20.unity_MaxOutputValue;
  let x_254 : f32 = x_20.unity_MaxOutputValue;
  let x_255 : vec3<f32> = vec3<f32>(x_250, x_252, x_254);
  let x_260 : vec3<f32> = min(vec3<f32>(x_246.x, x_246.y, x_246.z), vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  u_xlat0.w = 1.0f;
  let x_269 : u32 = x_20.unity_MetaFragmentControl.x;
  let x_270 : bool = (x_269 != 0u);
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_271, vec4<bool>(x_270, x_270, x_270, x_270));
  let x_278 : u32 = x_20.unity_MetaFragmentControl.y;
  let x_279 : bool = (x_278 != 0u);
  let x_281 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_281, vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<bool>(x_279, x_279, x_279, x_279));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3<f32>, @location(1) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

