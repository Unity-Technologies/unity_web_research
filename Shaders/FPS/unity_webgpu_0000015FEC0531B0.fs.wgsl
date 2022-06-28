struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_NonJitteredVP : mat4x4<f32>,
  x_PreviousVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_23);
  u_xlat0.x = x_24.x;
  let x_38 : f32 = x_33.x_ZBufferParams.x;
  let x_40 : f32 = u_xlat0.x;
  let x_44 : f32 = x_33.x_ZBufferParams.y;
  u_xlat0.x = ((x_38 * x_40) + x_44);
  let x_49 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_49);
  let x_58 : f32 = x_33.x_ProjectionParams.z;
  let x_63 : f32 = vs_TEXCOORD1.z;
  u_xlat3.x = (x_58 / x_63);
  let x_66 : vec3<f32> = u_xlat3;
  let x_68 : vec3<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_66.x, x_66.x, x_66.x) * x_68);
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = u_xlat3;
  let x_73 : vec3<f32> = (vec3<f32>(x_70.x, x_70.x, x_70.x) * x_72);
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_77 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = x_33.unity_CameraToWorld[1i];
  u_xlat1 = (vec4<f32>(x_77.y, x_77.y, x_77.y, x_77.y) * x_82);
  let x_85 : vec4<f32> = x_33.unity_CameraToWorld[0i];
  let x_86 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_85 * vec4<f32>(x_86.x, x_86.x, x_86.x, x_86.x)) + x_89);
  let x_92 : vec4<f32> = x_33.unity_CameraToWorld[2i];
  let x_93 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_92 * vec4<f32>(x_93.z, x_93.z, x_93.z, x_93.z)) + x_96);
  let x_98 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = x_33.unity_CameraToWorld[3i];
  u_xlat0 = (x_98 + x_101);
  let x_103 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = x_33.x_PreviousVP[1i];
  let x_109 : vec3<f32> = (vec3<f32>(x_103.y, x_103.y, x_103.y) * vec3<f32>(x_107.x, x_107.y, x_107.w));
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_113 : vec4<f32> = x_33.x_PreviousVP[0i];
  let x_115 : vec4<f32> = u_xlat0;
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec3<f32> = ((vec3<f32>(x_113.x, x_113.y, x_113.w) * vec3<f32>(x_115.x, x_115.x, x_115.x)) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : vec4<f32> = x_33.x_PreviousVP[2i];
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec3<f32> = ((vec3<f32>(x_124.x, x_124.y, x_124.w) * vec3<f32>(x_126.z, x_126.z, x_126.z)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_135 : vec4<f32> = x_33.x_PreviousVP[3i];
  let x_137 : vec4<f32> = u_xlat0;
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec3<f32> = ((vec3<f32>(x_135.x, x_135.y, x_135.w) * vec3<f32>(x_137.w, x_137.w, x_137.w)) + vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec2<f32> = (vec2<f32>(x_145.x, x_145.y) / vec2<f32>(x_147.z, x_147.z));
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_150.z, x_150.w);
  let x_152 : vec4<f32> = u_xlat1;
  let x_155 : vec2<f32> = (vec2<f32>(x_152.x, x_152.y) + vec2<f32>(1.0f, 1.0f));
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_155.x, x_155.y, x_156.z, x_156.w);
  let x_159 : f32 = u_xlat1.x;
  u_xlat1.x = (x_159 * 0.5f);
  let x_164 : f32 = u_xlat1.y;
  u_xlat1.z = ((-(x_164) * 0.5f) + 1.0f);
  let x_170 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = x_33.x_NonJitteredVP[1i];
  u_xlat2 = (vec3<f32>(x_170.y, x_170.y, x_170.y) * vec3<f32>(x_173.x, x_173.y, x_173.w));
  let x_177 : vec4<f32> = x_33.x_NonJitteredVP[0i];
  let x_179 : vec4<f32> = u_xlat0;
  let x_182 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_177.x, x_177.y, x_177.w) * vec3<f32>(x_179.x, x_179.x, x_179.x)) + x_182);
  let x_185 : vec4<f32> = x_33.x_NonJitteredVP[2i];
  let x_187 : vec4<f32> = u_xlat0;
  let x_190 : vec3<f32> = u_xlat2;
  let x_191 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.w) * vec3<f32>(x_187.z, x_187.z, x_187.z)) + x_190);
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = x_33.x_NonJitteredVP[3i];
  let x_197 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat0;
  let x_202 : vec3<f32> = ((vec3<f32>(x_195.x, x_195.y, x_195.w) * vec3<f32>(x_197.w, x_197.w, x_197.w)) + vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec2<f32> = (vec2<f32>(x_205.x, x_205.y) / vec2<f32>(x_207.z, x_207.z));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_210.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : vec2<f32> = (vec2<f32>(x_212.x, x_212.y) + vec2<f32>(1.0f, 1.0f));
  let x_215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_215.w);
  let x_218 : f32 = u_xlat0.x;
  u_xlat0.x = (x_218 * 0.5f);
  let x_222 : f32 = u_xlat0.y;
  u_xlat0.z = ((-(x_222) * 0.5f) + 1.0f);
  let x_229 : vec4<f32> = u_xlat1;
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : vec2<f32> = (-(vec2<f32>(x_229.x, x_229.z)) + vec2<f32>(x_232.x, x_232.z));
  let x_235 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
  let x_239 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_239.x, x_239.y, vec2<f32>(0.0f, 1.0f).x, vec2<f32>(0.0f, 1.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

