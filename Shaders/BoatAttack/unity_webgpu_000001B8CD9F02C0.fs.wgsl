struct PGlobals {
  x_SourceSize : vec4<f32>,
  x_CoCParams : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_FullCoCTexture : texture_2d<f32>;

@group(1) @binding(0) var<uniform> x_172 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var x_161 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureGather(0i, x_BlitTexture, sampler_LinearClamp, x_23);
  u_xlat0 = x_26;
  let x_32 : f32 = u_xlat0.x;
  u_xlat1.x = x_32;
  let x_38 : vec2<f32> = vs_TEXCOORD0;
  let x_40 : vec4<f32> = textureGather(1i, x_BlitTexture, sampler_LinearClamp, x_38);
  u_xlat2 = vec4<f32>(x_40.x, x_40.z, x_40.y, x_40.w);
  let x_43 : f32 = u_xlat2.x;
  u_xlat1.y = x_43;
  let x_50 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureGather(2i, x_BlitTexture, sampler_LinearClamp, x_50);
  u_xlat3 = vec4<f32>(x_52.x, x_52.y, x_52.w, x_52.z);
  let x_55 : f32 = u_xlat3.x;
  u_xlat1.z = x_55;
  let x_62 : f32 = u_xlat0.y;
  u_xlat4.x = x_62;
  let x_65 : f32 = u_xlat2.z;
  u_xlat4.y = x_65;
  let x_68 : f32 = u_xlat3.y;
  u_xlat4.z = x_68;
  let x_70 : vec4<f32> = u_xlat1;
  let x_72 : vec3<f32> = u_xlat4;
  let x_73 : vec3<f32> = (vec3<f32>(x_70.x, x_70.y, x_70.z) + x_72);
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_77 : f32 = u_xlat0.z;
  u_xlat2.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  u_xlat3.x = x_81;
  let x_84 : f32 = u_xlat2.w;
  u_xlat3.y = x_84;
  let x_87 : f32 = u_xlat3.w;
  u_xlat2.z = x_87;
  let x_89 : vec4<f32> = u_xlat1;
  let x_91 : vec4<f32> = u_xlat2;
  let x_93 : vec3<f32> = (vec3<f32>(x_89.x, x_89.y, x_89.z) + vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_96 : vec4<f32> = u_xlat3;
  let x_98 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = (vec3<f32>(x_96.x, x_96.y, x_96.z) + vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat0;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_114 : vec2<f32> = vs_TEXCOORD0;
  let x_115 : vec4<f32> = textureGather(0i, x_FullCoCTexture, sampler_LinearClamp, x_114);
  u_xlat1 = x_115;
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_116 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_125 : f32 = u_xlat1.z;
  let x_127 : f32 = u_xlat1.y;
  u_xlat15 = min(x_125, x_127);
  let x_130 : f32 = u_xlat1.w;
  let x_131 : f32 = u_xlat15;
  u_xlat15 = min(x_130, x_131);
  let x_133 : f32 = u_xlat15;
  let x_135 : f32 = u_xlat1.x;
  u_xlat15 = min(x_133, x_135);
  let x_139 : f32 = u_xlat1.z;
  let x_141 : f32 = u_xlat1.y;
  u_xlat6 = max(x_139, x_141);
  let x_144 : f32 = u_xlat1.w;
  let x_145 : f32 = u_xlat6;
  u_xlat6 = max(x_144, x_145);
  let x_147 : f32 = u_xlat6;
  let x_149 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_147, x_149);
  let x_156 : f32 = u_xlat1.x;
  let x_157 : f32 = u_xlat15;
  u_xlatb6 = (x_156 < -(x_157));
  let x_160 : bool = u_xlatb6;
  if (x_160) {
    let x_164 : f32 = u_xlat15;
    x_161 = x_164;
  } else {
    let x_167 : f32 = u_xlat1.x;
    x_161 = x_167;
  }
  let x_168 : f32 = x_161;
  u_xlat15 = x_168;
  let x_169 : f32 = u_xlat15;
  let x_175 : f32 = x_172.x_CoCParams.z;
  u_xlat15 = (x_169 * x_175);
  let x_178 : f32 = x_172.x_SourceSize.w;
  let x_180 : f32 = x_172.x_SourceSize.w;
  u_xlat1.x = (x_178 + x_180);
  let x_185 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_185);
  let x_188 : f32 = u_xlat15;
  let x_191 : f32 = u_xlat1.x;
  u_xlat1.x = (abs(x_188) * x_191);
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_195, 0.0f, 1.0f);
  let x_201 : f32 = u_xlat15;
  SV_Target0.w = x_201;
  let x_205 : f32 = u_xlat1.x;
  u_xlat15 = ((x_205 * -2.0f) + 3.0f);
  let x_211 : f32 = u_xlat1.x;
  let x_213 : f32 = u_xlat1.x;
  u_xlat1.x = (x_211 * x_213);
  let x_216 : f32 = u_xlat15;
  let x_218 : f32 = u_xlat1.x;
  u_xlat15 = (x_216 * x_218);
  let x_220 : f32 = u_xlat15;
  let x_222 : vec4<f32> = u_xlat0;
  let x_224 : vec3<f32> = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
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

