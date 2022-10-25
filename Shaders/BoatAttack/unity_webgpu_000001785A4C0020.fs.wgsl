struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_BlitTexture_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  u_xlat0.x = 0.0f;
  let x_23 : vec4<f32> = x_18.x_BlitTexture_TexelSize;
  let x_28 : vec2<f32> = (vec2<f32>(x_23.y, x_23.y) * vec2<f32>(3.230769157f, 1.384615421f));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_28.x, x_29.z, x_28.y);
  let x_32 : vec4<f32> = u_xlat0;
  let x_37 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (-(vec4<f32>(x_32.x, x_32.y, x_32.x, x_32.w)) + vec4<f32>(x_37.x, x_37.y, x_37.x, x_37.y));
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (vec4<f32>(x_40.x, x_40.w, x_40.x, x_40.y) + vec4<f32>(x_42.x, x_42.y, x_42.x, x_42.y));
  let x_56 : vec4<f32> = u_xlat1;
  let x_61 : f32 = x_18.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_56.z, x_56.w), x_61);
  u_xlat2 = x_62;
  let x_66 : vec4<f32> = u_xlat1;
  let x_69 : f32 = x_18.x_GlobalMipBias.x;
  let x_70 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_66.x, x_66.y), x_69);
  u_xlat1 = x_70;
  let x_72 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec3<f32> = (vec3<f32>(x_72.w, x_72.w, x_72.w) * vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_79 : vec4<f32> = u_xlat2;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec3<f32> = (vec3<f32>(x_79.w, x_79.w, x_79.w) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_90 : vec3<f32> = (vec3<f32>(x_86.x, x_86.y, x_86.z) * vec3<f32>(2.529729843f, 2.529729843f, 2.529729843f));
  let x_91 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec3<f32> = ((vec3<f32>(x_93.x, x_93.y, x_93.z) * vec3<f32>(0.562162161f, 0.562162161f, 0.562162161f)) + vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_106 : vec2<f32> = vs_TEXCOORD0;
  let x_108 : f32 = x_18.x_GlobalMipBias.x;
  let x_109 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_106, x_108);
  u_xlat2 = x_109;
  let x_110 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec3<f32> = (vec3<f32>(x_110.w, x_110.w, x_110.w) * vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat1;
  let x_124 : vec3<f32> = ((vec3<f32>(x_117.x, x_117.y, x_117.z) * vec3<f32>(1.81621623f, 1.81621623f, 1.81621623f)) + vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_130 : vec4<f32> = u_xlat0;
  let x_133 : f32 = x_18.x_GlobalMipBias.x;
  let x_134 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_130.x, x_130.y), x_133);
  u_xlat2 = x_134;
  let x_138 : vec4<f32> = u_xlat0;
  let x_141 : f32 = x_18.x_GlobalMipBias.x;
  let x_142 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_138.z, x_138.w), x_141);
  u_xlat0 = x_142;
  let x_143 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = (vec3<f32>(x_143.w, x_143.w, x_143.w) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec3<f32> = (vec3<f32>(x_150.w, x_150.w, x_150.w) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat2;
  let x_160 : vec4<f32> = u_xlat1;
  let x_162 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(2.529729843f, 2.529729843f, 2.529729843f)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  let x_170 : vec3<f32> = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(0.562162161f, 0.562162161f, 0.562162161f)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_183 : f32 = u_xlat0.y;
  let x_185 : f32 = u_xlat0.x;
  u_xlat9 = max(x_183, x_185);
  let x_189 : f32 = u_xlat0.z;
  u_xlat1.x = max(x_189, 0.00001f);
  let x_193 : f32 = u_xlat9;
  let x_195 : f32 = u_xlat1.x;
  u_xlat9 = max(x_193, x_195);
  let x_197 : f32 = u_xlat9;
  u_xlat9 = (x_197 * 255.0f);
  let x_200 : f32 = u_xlat9;
  u_xlat9 = ceil(x_200);
  let x_202 : f32 = u_xlat9;
  u_xlat9 = (x_202 * 0.003921569f);
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : f32 = u_xlat9;
  let x_211 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) / vec3<f32>(x_209, x_209, x_209));
  let x_212 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : f32 = u_xlat9;
  SV_Target0.w = x_214;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

