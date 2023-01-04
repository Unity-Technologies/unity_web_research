struct PGlobals {
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_52 : PGlobals;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_GrainTex : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat13 : f32;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(7) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_49 : vec2<f32> = vs_TEXCOORD1;
  let x_57 : vec4<f32> = x_52.x_Grain_Params2;
  let x_61 : vec4<f32> = x_52.x_Grain_Params2;
  let x_63 : vec2<f32> = ((x_49 * vec2<f32>(x_57.x, x_57.y)) + vec2<f32>(x_61.z, x_61.w));
  let x_64 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_63.x, x_63.y, x_64.z);
  let x_71 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat2 = vec3<f32>(x_73.x, x_73.y, x_73.z);
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat3 = vec3<f32>(x_76.x, x_76.y, x_76.z);
  let x_78 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_78, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_85 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_85, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_91 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_91);
  let x_96 : f32 = x_52.x_Grain_Params1.x;
  let x_97 : f32 = u_xlat12;
  u_xlat12 = ((x_96 * -(x_97)) + 1.0f);
  let x_101 : vec4<f32> = u_xlat0;
  let x_103 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_101.x, x_101.y, x_101.z) * x_103);
  let x_105 : vec3<f32> = u_xlat2;
  let x_108 : f32 = x_52.x_Grain_Params1.y;
  let x_110 : f32 = x_52.x_Grain_Params1.y;
  let x_112 : f32 = x_52.x_Grain_Params1.y;
  u_xlat2 = (x_105 * vec3<f32>(x_108, x_110, x_112));
  let x_115 : vec3<f32> = u_xlat2;
  let x_116 : f32 = u_xlat12;
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : vec3<f32> = ((x_115 * vec3<f32>(x_116, x_116, x_116)) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat1;
  let x_128 : f32 = x_52.x_PostExposure;
  let x_130 : f32 = x_52.x_PostExposure;
  let x_132 : f32 = x_52.x_PostExposure;
  let x_134 : f32 = x_52.x_PostExposure;
  let x_135 : vec4<f32> = vec4<f32>(x_128, x_130, x_132, x_134);
  u_xlat0 = (vec4<f32>(x_124.w, x_124.x, x_124.y, x_124.z) * vec4<f32>(x_135.x, x_135.y, x_135.z, x_135.w));
  let x_142 : vec4<f32> = u_xlat0;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.y, x_142.z, x_142.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : vec4<f32> = u_xlat1;
  let x_154 : vec3<f32> = log2(vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat1;
  let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_165 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_167 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = clamp(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat1;
  let x_179 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_181 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_179.y, x_179.y, x_179.y));
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_186 : f32 = x_52.x_Lut3D_Params.x;
  u_xlat13 = (x_186 * 0.5f);
  let x_189 : vec4<f32> = u_xlat1;
  let x_192 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_195 : f32 = u_xlat13;
  let x_197 : vec3<f32> = ((vec3<f32>(x_189.x, x_189.y, x_189.z) * vec3<f32>(x_192.x, x_192.x, x_192.x)) + vec3<f32>(x_195, x_195, x_195));
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec3<f32> = vec3<f32>(x_210.x, x_210.y, x_210.z);
  let x_212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_212.x, x_211.x, x_211.y, x_211.z);
  let x_219 : f32 = x_52.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_219);
  let x_221 : bool = u_xlatb1;
  if (x_221) {
    let x_224 : vec4<f32> = u_xlat0;
    let x_225 : vec3<f32> = vec3<f32>(x_224.y, x_224.z, x_224.w);
    let x_226 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat1;
    let x_232 : vec3<f32> = clamp(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_233 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_241 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_241.y, x_241.z, x_241.w, x_241.x);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

