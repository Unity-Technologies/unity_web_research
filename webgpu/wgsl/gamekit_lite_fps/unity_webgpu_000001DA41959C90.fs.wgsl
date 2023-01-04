struct PGlobals {
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : f32;

@group(0) @binding(0) var<uniform> x_36 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec2<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat9 : f32;

var<private> SV_Target1 : vec4<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_24.x, x_24.y));
  u_xlat0.x = x_26.y;
  let x_41 : f32 = x_36.x_OcclusionStrength;
  u_xlat3 = (-(x_41) + 1.0f);
  let x_48 : f32 = u_xlat0.x;
  let x_50 : f32 = x_36.x_OcclusionStrength;
  let x_52 : f32 = u_xlat3;
  SV_Target0.w = ((x_48 * x_50) + x_52);
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_64 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y));
  u_xlat0 = vec3<f32>(x_64.x, x_64.y, x_64.z);
  let x_67 : vec3<f32> = u_xlat0;
  let x_71 : vec4<f32> = x_36.x_Color;
  u_xlat1 = (x_67 * vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_75 : vec4<f32> = x_36.x_Color;
  let x_77 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_75.x, x_75.y, x_75.z) * x_77) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_89 : vec4<f32> = vs_TEXCOORD0;
  let x_91 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_89.x, x_89.y));
  u_xlat2 = vec2<f32>(x_91.x, x_91.w);
  let x_95 : f32 = u_xlat2.x;
  u_xlat9 = ((-(x_95) * 0.959999979f) + 0.959999979f);
  let x_100 : f32 = u_xlat9;
  let x_102 : vec3<f32> = u_xlat1;
  let x_103 : vec3<f32> = (vec3<f32>(x_100, x_100, x_100) * x_102);
  let x_104 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec2<f32> = u_xlat2;
  let x_109 : vec3<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.x, x_107.x) * x_109) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_114 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_117 : f32 = u_xlat2.y;
  let x_120 : f32 = x_36.x_GlossMapScale;
  SV_Target1.w = (x_117 * x_120);
  let x_128 : vec4<f32> = vs_TEXCOORD0;
  let x_130 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_128.x, x_128.y));
  u_xlat0 = vec3<f32>(x_130.x, x_130.y, x_130.w);
  let x_134 : f32 = u_xlat0.z;
  let x_136 : f32 = u_xlat0.x;
  u_xlat0.x = (x_134 * x_136);
  let x_139 : vec3<f32> = u_xlat0;
  let x_146 : vec2<f32> = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_147 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_146.x, x_146.y, x_147.z);
  let x_149 : vec3<f32> = u_xlat0;
  let x_153 : f32 = x_36.x_BumpScale;
  let x_155 : vec2<f32> = (vec2<f32>(x_149.x, x_149.y) * vec2<f32>(x_153, x_153));
  let x_156 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_155.x, x_155.y, x_156.z);
  let x_158 : vec3<f32> = u_xlat0;
  let x_161 : vec4<f32> = vs_TEXCOORD3;
  u_xlat1 = (vec3<f32>(x_158.y, x_158.y, x_158.y) * vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_167 : vec3<f32> = u_xlat0;
  let x_170 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167.x, x_167.x, x_167.x)) + x_170);
  let x_172 : vec3<f32> = u_xlat0;
  let x_174 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_172.x, x_172.y), vec2<f32>(x_174.x, x_174.y));
  let x_179 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_179, 1.0f);
  let x_183 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_183) + 1.0f);
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_188);
  let x_192 : vec4<f32> = vs_TEXCOORD4;
  let x_194 : vec3<f32> = u_xlat0;
  let x_197 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_194.x, x_194.x, x_194.x)) + x_197);
  let x_199 : vec3<f32> = u_xlat0;
  let x_200 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(x_199, x_200);
  let x_202 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_202);
  let x_204 : f32 = u_xlat9;
  let x_206 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_204, x_204, x_204) * x_206);
  let x_209 : vec3<f32> = u_xlat0;
  let x_213 : vec3<f32> = ((x_209 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_214 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  SV_Target2.w = 1.0f;
  let x_222 : vec4<f32> = vs_TEXCOORD0;
  let x_224 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_222.x, x_222.y));
  u_xlat0 = vec3<f32>(x_224.x, x_224.y, x_224.z);
  let x_226 : vec3<f32> = u_xlat0;
  let x_229 : vec4<f32> = x_36.x_EmissionColor;
  u_xlat0 = (x_226 * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec3<f32> = u_xlat0;
  let x_235 : vec3<f32> = exp2(-(x_233));
  let x_236 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}

